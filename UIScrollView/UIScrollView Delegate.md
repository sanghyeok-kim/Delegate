# `UIScorllView` - [Document](https://developer.apple.com/documentation/uikit/uiscrollview)


<br>


# `UIScrollView` - [Document](https://developer.apple.com/documentation/uikit/uiscrollviewdelegate)

- `required` : *없음*


<br>


## Responding to Scrolling and Dragging

```swift
func scrollViewDidScroll(UIScrollView)
```
: *사용자가 receiver 내에서 contentView를 스크롤할 때 `delegate`에게 알립니다*
<br>*Tells the delegate when the user scrolls the content view within the receiver.*

<br>

```swift
func scrollViewWillBeginDragging(UIScrollView)
```
: *scrollView가 콘텐츠 스크롤을 시작하려고 할 때 `delegate`에게 알립니다.*
<br>*Tells the delegate when the scroll view is about to start scrolling the content.*

<br>

```swift
func scrollViewWillEndDragging(UIScrollView, withVelocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>)
```
: *사용자가 콘텐츠 스크롤을 마치면 `delegate`에게 알립니다.*
<br>*Tells the delegate when the user finishes scrolling the content.*

<br>

```swift
func scrollViewDidEndDragging(UIScrollView, willDecelerate: Bool)
```
: *scrollView에서 드래그가 끝날 때 `delegate`에게 알립니다.*
<br>*Tells the delegate when dragging ended in the scroll view.*


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


<br>
<br>


## Responding to Inset Changes
