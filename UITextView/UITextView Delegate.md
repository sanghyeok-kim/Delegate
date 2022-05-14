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

```swift
func textView(UITextView, shouldInteractWith: NSTextAttachment, in: NSRange, interaction: UITextItemInteraction) -> Bool
```
: *textView가 특정 텍스트 범위에서 '지정된 텍스트'와 '지정된 유형의 사용자 상호 작용'을 허용하는지 여부를 `delegate`에게 묻습니다.*
<br>*Asks the delegate whether the specified text view allows the specified type of user interaction with the provided text attachment in the specified range of text.*


<br>


```swift
func textView(UITextView, shouldInteractWith: URL, in: NSRange, interaction: UITextItemInteraction) -> Bool
```
: *textView가 특정 텍스트 범위에서 '지정된 URL'과 '지정된 유형의 사용자 상호 작용'을 허용하는지 여부를 `delegate`에게 묻습니다.*
<br>*Asks the delegate whether the specified text view allows the specified type of user interaction with the specified URL in the specified range of text.*


<br>
<br>


## Constants
```swift
enum UITextItemInteraction
```
: *사용자가 텍스트 또는 URL과 할 수 있는 '상호 작용 유형'을 나타내는 상수입니다.*
<br>*Constants that indicate the type of interaction the user expects to have with a URL or text attachment.*