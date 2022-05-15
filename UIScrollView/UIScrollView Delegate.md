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


<br>
<br>


## Responding to Scrolling Animations


<br>
<br>


## Responding to Inset Changes
