# `UITextField` - [Document](https://developer.apple.com/documentation/uikit/uitextfield)

<br>

# `UITextFieldDelegate` - [Document](https://developer.apple.com/documentation/uikit/uitextfielddelegate)

- `required` : *없음*

<br>

## Managing Editing

```swift
func textFieldShouldBeginEditing(UITextField) -> Bool
```
: *지정된 텍스트 필드에서 편집을 시작할지 여부를 `delegate`에게 묻습니다.*
<br>*Asks the delegate whether to begin editing in the specified text field.*

- 텍스트 필드 편집을 허용할지 여부를 판단할 때 사용함
  - `true` 반환시 텍스트 필드 편집 가능(커서 나타남)
  - `false` 반환시 텍스트 필드 편집 불가능(커서 나타나지 않음)

<br>

```swift
func textFieldDidBeginEditing(UITextField)
```
: *지정된 텍스트 필드에서 편집이 시작될 때 `delegate`에게 알립니다.*
<br>*Tells the delegate when editing begins in the specified text field.*
- 텍스트 필드 편집이 시작된 후(텍스트 필드가 `FirstResponder`가 된 후)에 실행됨

<br>

```swift
func textFieldShouldEndEditing(UITextField) -> Bool
```
: *지정된 텍스트 필드에서 편집을 중지할지 여부를 `delegate`에게 묻습니다.*
<br>*Asks the delegate whether to stop editing in the specified text field.*
- `true` 반환시 현재 편집중인 텍스트 필드의 편집을 중단할 수 있음(커서 사라짐)
- `false` 반환시 현재 편집중인 텍스트 필드의 편집을 중단할 수 없음(커서 사라지지 않음)
  - 따라서 다른 텍스트 필드를 선택해도 해당 텍스트 필드를 편집할 수 없음(현재 편집중인 텍스트 필드만을 편집 가능)

<br>

```swift
func textFieldDidEndEditing(UITextField, reason: UITextFieldDidEndEditingReason)
```
: *지정된 텍스트 필드에 대한 편집이 중지되는 시점과 중지된 이유를 `delegate`에게 알려줍니다.*
<br>*Tells the delegate when editing stops for the specified text field, and the reason it stopped.*
- 중지된 이유(`reason`)는 `UITextField.DidEndEditingReason`이라는 `enum: Int` 타입으로,<br>
  `committed = 0` 라는 하나의 케이스만 존재(어떻게 사용되는지는 아직 모르겠음..)
  - ```swift
    enum UITextField.DidEndEditingReason
    ```
    : *텍스트 필드에서 편집을 종료하는 이유를 나타내는 상수입니다.*
    <br>*Constants that indicate the reason for ending editing in a text field.*

<br>

```swift
func textFieldDidEndEditing(UITextField)
```
: *지정된 텍스트 필드에 대해 편집이 중지될 때 `delegate`에게 알립니다.*
<br>*Tells the delegate when editing stops for the specified text field.*
- 텍스트 필드 편집이 끝났을 때(다른 텍스트 필드를 선택했을 때 등) 실행됨

<br>
<br>

## Editing the Text Field's Text

```swift
func textField(UITextField, shouldChangeCharactersIn: NSRange, replacementString: String) -> Bool
```
: *지정된 텍스트를 변경할지 여부를 `delegate`에게 묻습니다.*
<br>*Asks the delegate whether to change the specified text.*

- 텍스트 필드가 편집될 때 마다 실행됨
  - `true` 반환시 지정된 텍스트 범위를 대체
  - `false` 반환시 기존 텍스트를 유지 

<br>

```swift
func textFieldShouldClear(UITextField) -> Bool
```
: *텍스트 필드의 현재 내용을 제거할지 여부를 `delegate`에게 묻습니다.*
<br>*Asks the delegate whether to remove the text field’s current contents.*

- `built-in clear button`을 눌렀을 때 실행됨
  - `built-in clear button`은 default로 제공되지 않으며, textField의 `clearButtonMode` 속성을 통해 설정 가능

<br>

```swift
func textFieldShouldReturn(UITextField) -> Bool
```
: *텍스트 필드에 대해 Return 버튼을 눌러 처리할지 여부를 `delegate`에게 묻습니다.*
<br>*Asks the delegate whether to process the pressing of the Return button for the text field.*

- `return` 키가 입력될 때 마다 실행됨

- `textField.resignFirstResponder()`와 함께 사용하면 `return`키 입력시 키보드를 dismiss 가능
  <br>(`return` 키가 눌러진 텍스트 필드의 `FirstResponder`를 해제)

<br>
<br>

## Managing Text Selection

```swift
func textFieldDidChangeSelection(UITextField)
```
: *지정된 텍스트 필드에서 텍스트 선택이 변경되면 `delegate`에게 알립니다.*
<br>*Tells the delegate when the text selection changes in the specified text field.*

- 편집중인 텍스트 필드에서 커서의 위치가 변경될 때 마다 실행됨
