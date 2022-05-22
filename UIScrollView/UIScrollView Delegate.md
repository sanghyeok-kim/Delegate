# `UIScorllView` - [Document](https://developer.apple.com/documentation/uikit/uiscrollview)


<br>


# `UIScrollView` - [Document](https://developer.apple.com/documentation/uikit/uiscrollviewdelegate)

- `required` : *없음*


<br>


## Responding to Scrolling and Dragging

```swift
func scrollViewDidScroll(UIScrollView)
```
: *사용자가 contentView를 스크롤할 때 `delegate`에게 알립니다*
<br>*Tells the delegate when the user scrolls the content view within the receiver.*
- 스크롤될 때 마다 계속 실행됨

<br>

```swift
func scrollViewWillBeginDragging(UIScrollView)
```
: *scrollView가 스크롤을 시작하려고 할 때 `delegate`에게 알립니다.*
<br>*Tells the delegate when the scroll view is about to start scrolling the content.*
- 손을 댄 상태에서 드래그하기 시작할 때 1회 호출됨

<br>

```swift
func scrollViewWillEndDragging(UIScrollView, withVelocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
```
: *사용자가 콘텐츠 스크롤을 마치면 `delegate`에게 알립니다.*
<br>*Tells the delegate when the user finishes scrolling the content.*
- 드래그 한 후 손을 땔 때 1회 호출됨
- 땠을 때의 속도와 방향을 `velocity`로 알려줌

<br>

```swift
func scrollViewDidEndDragging(UIScrollView, willDecelerate: Bool)
```
: *scrollView에서 드래그가 끝날 때 `delegate`에게 알립니다.*
<br>*Tells the delegate when dragging ended in the scroll view.*
- 드래그 한 후 손을 땔 때 1회 호출됨
- scrollView의 스크롤 모션 감속 여부를 `decelerate`로 알려줌
    - 손을 땐 순간 스크롤뷰가 감속해야한다면 true로 반환
    - 손을 땐 순간 스크롤뷰가 이미 멈춰있다면 false를 반환

<br>
<br>


## Managing Zooming

```swift
func viewForZooming(in: UIScrollView) -> UIView?
```
: *scrollView에서 확대/축소가 발생하려고 할 때 뷰의 크기를 조정하도록 `delegate`에게 요청합니다.*
<br>*Asks the delegate for the view to scale when zooming is about to occur in the scroll view.*


<br>


```swift
func scrollViewWillBeginZooming(UIScrollView, with: UIView?)
```
: *scrollView에서 콘텐츠 확대/축소가 시작되려고 함을 `delegate`에게 알립니다.*
<br>*Tells the delegate that zooming of the content in the scroll view is about to commence.*


<br>


```swift
func scrollViewDidEndZooming(UIScrollView, with: UIView?, atScale: CGFloat)
```
: *scrollView에서 콘텐츠 확대/축소가 완료되면 `delegate`에게 알립니다.*
<br>*Tells the delegate when zooming of the content in the scroll view completed.*


<br>


```swift
func scrollViewDidZoom(UIScrollView)
```
: *`delegate`에게 scrollView의 확대/축소 비율이 변경되었음을 알립니다.*
<br>*Tells the delegate that the scroll view’s zoom factor changed.*


<br>
<br>

## Responding to Scrolling Animations

```swift
func scrollViewDidEndScrollingAnimation(UIScrollView)
```
: *scrollView의 스크롤 애니메이션이 종료되면 delegate에게 알립니다.*
<br>*Tells the delegate when a scrolling animation in the scroll view concludes.*

<br>
<br>


## Responding to Inset Changes
```swift
func scrollViewDidChangeAdjustedContentInset(UIScrollView)
```
: *scrollView의 inset 값이 변경될 때 호출됩니다.*
<br>*Called when the scroll view's inset values changed.*