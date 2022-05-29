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


<br>
<br>


## Responding to Row Selection