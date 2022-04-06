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
- *Tells the delegate the table view is about to draw a cell for a particular row.*

<br>

```swift
func tableView(UITableView, indentationLevelForRowAt: IndexPath) -> Int
```
: *지정된 섹션의 행에 대한 들여쓰기 수준을 반환하도록 `delegate`에게 요청합니다.*
- *Asks the delegate to return the level of indentation for a row in a given section.*

<br>

```swift
func tableView(UITableView, shouldSpringLoadRowAt: IndexPath, with: UISpringLoadedInteractionContext) -> Bool
```
: *테이블에 있는 행의 스프링 로딩 동작을 미세 조정할 수 있도록 호출됩니다.*
- *Called to let you fine tune the spring-loading behavior of the rows in a table.*

<br>
<br>

## Responding to Row Selections

```swift
func tableView(UITableView, willSelectRowAt: IndexPath) -> IndexPath?
```
: *`delegate`에게 행이 선택될 것임을 알립니다.*
- *Tells the delegate a row is about to be selected.*

<br>

```swift
func tableView(UITableView, didSelectRowAt: IndexPath)
```
: *`delegate`에게 행이 선택되었음을 알립니다.*
- *Tells the delegate a row is selected.*

<br>

```swift
func tableView(UITableView, willDeselectRowAt: IndexPath) -> IndexPath?
```
: *지정된 행이 선택 취소될 것임을 `delegate`에게 알립니다.*
- *Tells the delegate that a specified row is about to be deselected.*


<br>

```swift
func tableView(UITableView, didDeselectRowAt: IndexPath)
```
: *지정된 행이 이제 선택 해제되었음을 `delegate`에게 알립니다.*
- *Tells the delegate that the specified row is now deselected.*

<br>

```swift
func tableView(UITableView, shouldBeginMultipleSelectionInteractionAt: IndexPath) -> Bool
```
: *사용자가 두 손가락 이동 제스처를 사용하여 테이블 뷰에서 여러 항목을 선택할 수 있는지 여부를 `delegate`에게 묻습니다.*
- *Asks the delegate whether the user can use a two-finger pan gesture to select multiple items in a table view.*

<br>

```swift
func tableView(UITableView, didBeginMultipleSelectionInteractionAt: IndexPath)
```
: *사용자가 테이블 뷰에서 여러 행을 선택하기 위해 두 손가락 이동 제스처를 사용하기 시작할 때 `delegate`에게 알립니다.*
- *Tells the delegate when the user starts using a two-finger pan gesture to select multiple rows in a table view.*

<br>

```swift
func tableViewDidEndMultipleSelectionInteraction(UITableView)
```
: *사용자가 테이블 뷰에서 여러 행을 선택하기 위해 두 손가락 이동 제스처 사용을 중지할 때 `delegate`에게 알립니다.*
- *Tells the delegate when the user stops using a two-finger pan gesture to select multiple rows in a table view.*

<br>
<br>

## Providing Custom Header and Footer Views

```swift
func tableView(UITableView, viewForHeaderInSection: Int) -> UIView?
```
: *테이블 뷰의 지정된 섹션 헤더에 표시할 뷰를 `delegate`에게 요청합니다.*
- *Asks the delegate for a view to display in the header of the specified section of the table view.*

<br>

```swift
func tableView(UITableView, viewForFooterInSection: Int) -> UIView?
```
: *테이블 뷰의 지정된 섹션 바닥글에 표시할 뷰를 `delegate`에게 요청합니다.*
- *Asks the delegate for a view to display in the footer of the specified section of the table view.*

<br>