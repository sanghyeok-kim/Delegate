# `UITextView` - [Document](https://developer.apple.com/documentation/uikit/uitextview)


<br>


# `UITextViewDelegate` - [Document](https://developer.apple.com/documentation/uikit/uitextviewdelegate)

- `required` : *없음*


<br>


## Responding to Editing Notifications

```swift
func textViewShouldBeginEditing(UITextView) -> Bool
```
: *지정된 textView에서 편집을 시작할지 여부를 `delegate`에게 묻습니다*
<br>*Asks the delegate whether to begin editing in the specified text view.*

<br>


```swift
func textViewDidBeginEditing(UITextView)
```
: *지정된 textView의 편집이 시작될 때 `delegate`에게 알립니다.*
<br>*Tells the delegate when editing of the specified text view begins.*

<br>


```swift
func textViewShouldEndEditing(UITextView) -> Bool
```
: *지정된 textView에서 편집을 중지할지 여부를 `delegate`에게 묻습니다.*
<br>*Asks the delegate whether to stop editing in the specified text view.*



<br>


```swift
func textViewDidEndEditing(UITextView)
```
: *지정된 textView의 편집이 끝나면 `delegate`에게 알립니다.*
<br>*Tells the delegate when editing of the specified text view ends.*


<br>
<br>


## Responding to Text Changes

```swift
func textView(UITextView, shouldChangeTextIn: NSRange, replacementText: String) -> Bool
```
: *textView에서 지정된 텍스트를 바꿀지 여부를 `delegate`에게 묻습니다.*
<br>*Asks the delegate whether to replace the specified text in the text view.*


<br>


```swift
func textViewDidChange(UITextView)
```
: *사용자가 지정된 textView에서 텍스트 또는 속성을 변경할 때 `delegate`에게 알립니다.*
<br>*Tells the delegate when the user changes the text or attributes in the specified text view.
Responding to Selection Changes*


<br>


```swift
func textViewDidChangeSelection(UITextView)
```
: *지정된 textView에서 텍스트 선택이 변경되면 `delegate`에게 알립니다.*
<br>*Tells the delegate when the text selection changes in the specified text view.*


<br>
<br>


## Interacting with Text Data