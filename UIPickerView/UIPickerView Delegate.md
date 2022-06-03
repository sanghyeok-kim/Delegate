# `UIPickerView` - [Document](https://developer.apple.com/documentation/uikit/uipickerview)


<br>


# `UIPickerView` - [Document](https://developer.apple.com/documentation/uikit/uipickerviewdelegate)

- `required` : *없음*


<br>


## Setting the Dimensions of the Picker View

```swift
func pickerView(UIPickerView, rowHeightForComponent: Int) -> CGFloat
```
: *row content를 그리는 데 사용할 row의 height가 필요할 때 pickerView에 의해 호출됩니다.*
<br>*Called by the picker view when it needs the row height to use for drawing row content.*


<br>


```swift
func pickerView(UIPickerView, widthForComponent: Int) -> CGFloat
```
: *row content를 그리는 데 사용할 row의 width가 필요할 때 pickerView에 의해 호출됩니다.*
<br>*Called by the picker view when it needs the row width to use for drawing row content.*


<br>
<br>


## Setting the Content of Component Rows
*The methods in this group are marked @optional. However, to use a picker view, you must implement either the pickerView(_:titleForRow:forComponent:) or the pickerView(_:viewForRow:forComponent:reusing:) method to provide the content of component rows.*

```swift
func pickerView(UIPickerView, titleForRow: Int, forComponent: Int) -> String?
```
: *주어진 구성 요소의 주어진 행에 사용할 title이 필요할 때 pickerView에 의해 호출됩니다.*
<br>*Called by the picker view when it needs the title to use for a given row in a given component.*


<br>


```swift
func pickerView(UIPickerView, attributedTitleForRow: Int, forComponent: Int) -> NSAttributedString?
```
: *지정된 구성 요소의 지정된 행에 사용할 스타일이 지정된 title이 필요할 때 pickerView에 의해 호출됩니다.*
<br>*Called by the picker view when it needs the styled title to use for a given row in a given component.*


<br>


```swift
func pickerView(UIPickerView, viewForRow: Int, forComponent: Int, reusing: UIView?) -> UIView
```
: *주어진 컴포넌트의 주어진 행 사용에 필요한 뷰가 있을 때 pickerView에 의해 호출됩니다.*
<br>*Called by the picker view when it needs the view to use for a given row in a given component.*


<br>
<br>


## Responding to Row Selection

```swift
func pickerView(UIPickerView, didSelectRow: Int, inComponent: Int)
```
: *사용자가 구성 요소에서 행을 선택할 때 pickerView에서 호출됩니다.*
*Called by the picker view when the user selects a row in a component.*