# `UITableView` - [Document](https://developer.apple.com/documentation/uikit/views_and_controls/table_views)

<br>

# `UITableViewDelegate` - [Document](https://developer.apple.com/documentation/uikit/uitableviewdelegate)

- `required` : *없음*

<br>

## Configuring Rows for the Table View
```swift
func tableView(UITableView, willDisplay: UITableViewCell, forRowAt: IndexPath)
```
: *테이블 뷰가 특정 행에 대한 셀을 그리려 한다고 `delegate`에게 알립니다.*
<br>*Tells the delegate the table view is about to draw a cell for a particular row.*



<br>

```swift
func tableView(UITableView, indentationLevelForRowAt: IndexPath) -> Int
```
: *지정된 섹션의 행에 대한 들여쓰기 level을 return하도록 `delegate`에게 요청합니다.*
<br>*Asks the delegate to return the level of indentation for a row in a given section.*

<br>

```swift
func tableView(UITableView, shouldSpringLoadRowAt: IndexPath, with: UISpringLoadedInteractionContext) -> Bool
```
: *테이블에 있는 행의 스프링 로딩 동작을 미세하게 조정할 수 있도록 호출됩니다.*
<br>*Called to let you fine tune the spring-loading behavior of the rows in a table.*

<br>
<br>

## Responding to Row Selections

```swift
func tableView(UITableView, willSelectRowAt: IndexPath) -> IndexPath?
```
: *`delegate`에게 행이 선택될 것임을 알립니다.*
<br>*Tells the delegate a row is about to be selected.*

<br>

```swift
func tableView(UITableView, didSelectRowAt: IndexPath)
```
: *`delegate`에게 행이 선택되었음을 알립니다.*
<br>*Tells the delegate a row is selected.*

<br>

```swift
func tableView(UITableView, willDeselectRowAt: IndexPath) -> IndexPath?
```
: *지정된 행이 선택 해제될 것임을 `delegate`에게 알립니다.*
<br>*Tells the delegate that a specified row is about to be deselected.*

<br>

```swift
func tableView(UITableView, didDeselectRowAt: IndexPath)
```
: *지정된 행이 이제 선택 해제되었음을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the specified row is now deselected.*

<br>

```swift
func tableView(UITableView, shouldBeginMultipleSelectionInteractionAt: IndexPath) -> Bool
```
: *사용자가 two-finger pan gesture를 사용하여 테이블 뷰에서 여러 항목을 선택할 수 있는지 여부를 `delegate`에게 묻습니다.*
<br>*Asks the delegate whether the user can use a two-finger pan gesture to select multiple items in a table view.*

<br>

```swift
func tableView(UITableView, didBeginMultipleSelectionInteractionAt: IndexPath)
```
: *사용자가 테이블 뷰에서 여러 행 선택을 위한 two-finger pan gesture를 사용하기 시작할 때 `delegate`에게 알립니다.*
<br>*Tells the delegate when the user starts using a two-finger pan gesture to select multiple rows in a table view.*

<br>

```swift
func tableViewDidEndMultipleSelectionInteraction(UITableView)
```
: *사용자가 테이블 뷰에서 여러 행을 선택하기 위해 two-finger pan gesture 사용을 중지할 때 `delegate`에게 알립니다.*
<br>*Tells the delegate when the user stops using a two-finger pan gesture to select multiple rows in a table view.*

<br>
<br>

## Providing Custom Header and Footer Views

```swift
func tableView(UITableView, viewForHeaderInSection: Int) -> UIView?
```
: *테이블 뷰의 지정된 섹션 header에 표시할 뷰를 `delegate`에게 요청합니다.*
<br>*Asks the delegate for a view to display in the header of the specified section of the table view.*

<br>

```swift
func tableView(UITableView, viewForFooterInSection: Int) -> UIView?
```
: *테이블 뷰의 지정된 섹션 footer에 표시할 뷰를 `delegate`에게 요청합니다.*
<br>*Asks the delegate for a view to display in the footer of the specified section of the table view.*

<br>

```swift
func tableView(UITableView, willDisplayHeaderView: UIView, forSection: Int)
```
: *테이블이 지정된 섹션에 대한 header 뷰를 표시하려고 함을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the table is about to display the header view for the specified section.*

<br>

```swift
func tableView(UITableView, willDisplayFooterView: UIView, forSection: Int)
```
: *테이블에 지정된 섹션에 대한 footer 뷰가 표시될 것임을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the table is about to display the footer view for the specified section.*

<br>
<br>

## Providing Header, Footer, and Row Heights

```swift
func tableView(UITableView, heightForRowAt: IndexPath) -> CGFloat
```
: *지정된 위치의 행에 사용할 높이를 `delegate`에게 요청합니다.*
<br>*Asks the delegate for the height to use for a row in a specified location.*

<br>

```swift
func tableView(UITableView, heightForHeaderInSection: Int) -> CGFloat*
```
: *특정 섹션의 header에 사용할 높이를 `delegate`에게 요청합니다.*
<br>*Asks the delegate for the height to use for the header of a particular section.*

<br>

```swift
func tableView(UITableView, heightForFooterInSection: Int) -> CGFloat
```
: *특정 섹션의 footer에 사용할 높이를 `delegate`에게 요청합니다.*
<br>*Asks the delegate for the height to use for the footer of a particular section.*

<br>

```swift
class let automaticDimension: CGFloat
```
: *지정된 차원의 기본값을 나타내는 상수입니다.*
<br>*A constant representing the default value for a given dimension.*

<br>
<br>

## Estimating Heights for the Table's Content

```swift
func tableView(UITableView, estimatedHeightForRowAt: IndexPath) -> CGFloat
```
: *지정된 위치에 있는 행의 예상 높이를 `delegate`에게 요청합니다.*
<br>*Asks the delegate for the estimated height of a row in a specified location.*

<br>

```swift
func tableView(UITableView, estimatedHeightForHeaderInSection: Int) -> CGFloat
```
: *특정 섹션 header의 예상 높이를 `delegate`에게 요청합니다.*
<br>*Asks the delegate for the estimated height of the header of a particular section.*

<br>

```swift
func tableView(UITableView, estimatedHeightForFooterInSection: Int) -> CGFloat
```
: *특정 섹션 footer의 예상 높이를 `delegate`에게 요청합니다.*
<br>Asks the delegate for the estimated height of the footer of a particular section.

