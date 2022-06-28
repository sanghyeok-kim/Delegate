# `UITableView` - [Document](https://developer.apple.com/documentation/uikit/views_and_controls/table_views)


<br>


# `UITableViewDelegate` - [Document](https://developer.apple.com/documentation/uikit/uitableviewdelegate)

- `required` : *없음*


<br>


## Configuring Rows for the Table View
```swift
func tableView(UITableView, willDisplay: UITableViewCell, forRowAt: IndexPath)
```
: *tableView가 특정 행에 대한 cell을 그리려 한다고 `delegate`에게 알립니다.*
<br>*Tells the delegate the table view is about to draw a cell for a particular row.*


<br>


```swift
func tableView(UITableView, indentationLevelForRowAt: IndexPath) -> Int
```
: *지정된 section의 행에 대한 들여쓰기 level을 return하도록 `delegate`에게 요청합니다.*
<br>*Asks the delegate to return the level of indentation for a row in a given section.*


<br>


```swift
func tableView(UITableView, shouldSpringLoadRowAt: IndexPath, with: UISpringLoadedInteractionContext) -> Bool
```
: *table에 있는 행의 스프링 로딩 동작을 미세하게 조정할 수 있도록 호출됩니다.*
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
: *사용자가 two-finger pan gesture를 사용하여 tableView에서 여러 항목을 선택할 수 있는지 여부를 `delegate`에게 묻습니다.*
<br>*Asks the delegate whether the user can use a two-finger pan gesture to select multiple items in a table view.*


<br>


```swift
func tableView(UITableView, didBeginMultipleSelectionInteractionAt: IndexPath)
```
: *사용자가 tableView에서 여러 행 선택을 위한 two-finger pan gesture를 사용하기 시작할 때 `delegate`에게 알립니다.*
<br>*Tells the delegate when the user starts using a two-finger pan gesture to select multiple rows in a table view.*


<br>


```swift
func tableViewDidEndMultipleSelectionInteraction(UITableView)
```
: *사용자가 tableView에서 여러 행을 선택하기 위해 two-finger pan gesture 사용을 중지할 때 `delegate`에게 알립니다.*
<br>*Tells the delegate when the user stops using a two-finger pan gesture to select multiple rows in a table view.*


<br>
<br>


## Providing Custom Header and Footer Views

```swift
func tableView(UITableView, viewForHeaderInSection: Int) -> UIView?
```
: *table 뷰의 지정된 section header에 표시할 뷰를 `delegate`에게 요청합니다.*
<br>*Asks the delegate for a view to display in the header of the specified section of the table view.*


<br>


```swift
func tableView(UITableView, viewForFooterInSection: Int) -> UIView?
```
: *table 뷰의 지정된 section footer에 표시할 뷰를 `delegate`에게 요청합니다.*
<br>*Asks the delegate for a view to display in the footer of the specified section of the table view.*


<br>


```swift
func tableView(UITableView, willDisplayHeaderView: UIView, forSection: Int)
```
: *table이 지정된 section에 대한 headerView를 표시하려고 함을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the table is about to display the header view for the specified section.*


<br>


```swift
func tableView(UITableView, willDisplayFooterView: UIView, forSection: Int)
```
: *table에 지정된 section에 대한 footerView가 표시될 것임을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the table is about to display the footer view for the specified section.*


<br>
<br>


## Providing Header, Footer, and Row Heights

```swift
func tableView(UITableView, heightForRowAt: IndexPath) -> CGFloat
```
: *지정된 위치의 행에 사용할 height를 `delegate`에게 요청합니다.*
<br>*Asks the delegate for the height to use for a row in a specified location.*


<br>


```swift
func tableView(UITableView, heightForHeaderInSection: Int) -> CGFloat*
```
: *특정 section의 header에 사용할 height를 `delegate`에게 요청합니다.*
<br>*Asks the delegate for the height to use for the header of a particular section.*


<br>


```swift
func tableView(UITableView, heightForFooterInSection: Int) -> CGFloat
```
: *특정 section의 footer에 사용할 height를 `delegate`에게 요청합니다.*
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
: *지정된 위치에 있는 행의 예상 height를 `delegate`에게 요청합니다.*
<br>*Asks the delegate for the estimated height of a row in a specified location.*


<br>


```swift
func tableView(UITableView, estimatedHeightForHeaderInSection: Int) -> CGFloat
```
: *특정 section header의 예상 height를 `delegate`에게 요청합니다.*
<br>*Asks the delegate for the estimated height of the header of a particular section.*


<br>


```swift
func tableView(UITableView, estimatedHeightForFooterInSection: Int) -> CGFloat
```
: *특정 section footer의 예상 height를 `delegate`에게 요청합니다.*
<br>*Asks the delegate for the estimated height of the footer of a particular section.*


<br>
<br>


## Managing Accessory Views

```swift
func tableView(UITableView, accessoryButtonTappedForRowWith: IndexPath)
```
: *사용자가 지정된 행에 대한 세부 정보 버튼을 탭했음을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the user tapped the detail button for the specified row.*


<br>
<br>


## Managing Context Menus

```swift
func tableView(UITableView, contextMenuConfigurationForRowAt: IndexPath, point: CGPoint) -> UIContextMenuConfiguration?
```
: *한 지점의 행에 대한 context menu Configuration을 반환합니다.*
<br>*Returns a context menu configuration for the row at a point.*


<br>


```swift
func tableView(UITableView, previewForDismissingContextMenuWithConfiguration: UIContextMenuConfiguration) -> UITargetedPreview?
```
: *context menu를 dismiss할 때 destination 뷰를 반환합니다.*
<br>*Returns the destination view when dismissing a context menu.*


<br>


```swift
func tableView(UITableView, previewForHighlightingContextMenuWithConfiguration: UIContextMenuConfiguration) -> UITargetedPreview?
```
: *생성된 default preview를 재정의하는 뷰를 반환합니다.*
<br>*Returns a view to override the default preview the table view created.*


<br>


```swift
func tableView(UITableView, willDisplayContextMenu: UIContextMenuConfiguration, animator: 
UIContextMenuInteractionAnimating?)
```
: *context menu가 나타날 때 `delegate`에게 알립니다.*
<br>*Informs the delegate when a context menu will appear.*


<br>


```swift
func tableView(UITableView, willEndContextMenuInteraction: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)
```
: *context menu가 사라질 때 `delegate`에게 알립니다.*
<br>*Informs the delegate when a context menu will disappear.*


<br>


```swift
func tableView(UITableView, willPerformPreviewActionForMenuWith: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating)
```
: *사용자가 preview를 눌러 커밋을 트리거할 때 `delegate`에게 알립니다.*
<br>*Informs the delegate when a user triggers a commit by tapping the preview.*


<br>
<br>


## Responding to Row Actions

```swift
func tableView(UITableView, leadingSwipeActionsConfigurationForRowAt: IndexPath) -> UISwipeActionsConfiguration?
```
: *행의 leading edge에 표시할 swipe action을 반환합니다.*
<br>*Returns the swipe actions to display on the leading edge of the row.*


<br>


```swift
func tableView(UITableView, trailingSwipeActionsConfigurationForRowAt: IndexPath) -> UISwipeActionsConfiguration?
```
: *행의 trailing edge에 표시할 swipe action을 반환합니다.*
<br>*Returns the swipe actions to display on the trailing edge of the row.*


<br>
<br>


## Managing Table View Highlights

```swift
func tableView(UITableView, shouldHighlightRowAt: IndexPath) -> Bool
```
: *지정된 행을 highlight해야 하는지 여부를 `delegate`에게 묻습니다.*
<br>*Asks the delegate if the specified row should be highlighted.*


<br>


```swift
func tableView(UITableView, didHighlightRowAt: IndexPath)
```
: *지정된 행이 highlight되었음을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the specified row was highlighted.*


<br>


```swift
func tableView(UITableView, didUnhighlightRowAt: IndexPath)
```
: *지정된 indexPath의 행에서 highlight가 제거되었음을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the highlight was removed from the row at the specified index path.*


<br>
<br>


## Editing Table Rows

```swift
func tableView(UITableView, willBeginEditingRowAt: IndexPath)
```
: *tableView가 편집 모드로 전환될 것임을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the table view is about to go into editing mode.*


<br>


```swift
func tableView(UITableView, didEndEditingRowAt: IndexPath?)
```
: *tableView가 편집 모드를 종료했음을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the table view has left editing mode.*


<br>


```swift
func tableView(UITableView, editingStyleForRowAt: IndexPath) -> UITableViewCell.EditingStyle
```
: *tableView의 특정 위치에 있는 행의 편집 스타일을 `delegate`에게 요청합니다.*
<br>*Asks the delegate for the editing style of a row at a particular location in a table view.*


<br>


```swift
func tableView(UITableView, titleForDeleteConfirmationButtonForRowAt: IndexPath) -> String?
```
: *삭제 확인 버튼의 기본 제목을 변경합니다.*
<br>*Changes the default title of the delete-confirmation button.*


<br>


```swift
func tableView(UITableView, shouldIndentWhileEditingRowAt: IndexPath) -> Bool
```

: *tableView가 편집 모드에 있는 동안 지정된 행의 배경을 들여써야 하는지 여부를 `delegate`에게 묻습니다.*
<br>*Asks the delegate whether the background of the specified row should be indented while the table view is in editing mode.*


<br>
<br>


## Reordering Table Rows

```swift
func tableView(UITableView, targetIndexPathForMoveFromRowAt: IndexPath, toProposedIndexPath: IndexPath) -> IndexPath
```
: *`delegate`에게 제안된 행 이동의 대상을 변경하기 위해 새 indexPath를 반환하도록 요청합니다.*
<br>*Asks the delegate to return a new index path to retarget a proposed move of a row.





<br>
<br>


## Tracking the Removal of Views

```swift
func tableView(UITableView, didEndDisplaying: UITableViewCell, forRowAt: IndexPath)
```
: *지정된 cell이 table에서 제거되었음을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the specified cell was removed from the table.*


<br>


```swift
func tableView(UITableView, didEndDisplayingHeaderView: UIView, forSection: Int)
```
: *지정된 headerView가 table에서 제거되었음을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the specified header view was removed from the table.*


<br>


```swift
func tableView(UITableView, didEndDisplayingFooterView: UIView, forSection: Int)
```
: *지정된 footerView가 table에서 제거되었음을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the specified footer view was removed from the table.*


<br>
<br>


## Managing Table View Focus

```swift
func tableView(UITableView, canFocusRowAt: IndexPath) -> Bool
```
: *지정된 indexPath에 있는 cell 자체가 포커스 가능한지 여부를 `delegate`에게 묻습니다.*
<br>*Asks the delegate whether the cell at the specified index path is itself focusable.*


<br>


```swift
func tableView(UITableView, shouldUpdateFocusIn: UITableViewFocusUpdateContext) -> Bool
```
: *context에서 지정한 포커스 업데이트가 허용되는지 여부를 `delegate`에게 묻습니다.*
<br>*Asks the delegate whether the focus update specified by the context is allowed to occur.*


<br>


```swift
func tableView(UITableView, didUpdateFocusIn: UITableViewFocusUpdateContext, with: UIFocusAnimationCoordinator)
```
: *context에서 지정한 포커스 업데이트가 방금 발생했음을 `delegate`에게 알립니다*
<br>*Tells the delegate that a focus update specified by the context has just occurred.*


<br>


```swift
func indexPathForPreferredFocusedView(in: UITableView) -> IndexPath?
```
: *선호하는 포커스 view에 대한 tableView의 indexPath를 `delegate`에게 요청합니다*
<br>*Asks the delegate for the table view’s index path for the preferred focused view.*


<br>
<br>


## Instance Methods

```swift
func tableView(UITableView, selectionFollowsFocusForRowAt: IndexPath) -> Bool
```
: *해당 indexPath에서 행에 대한 선택 및 포커스 동작을 관련시킬지 여부를 `delegate`에게 묻습니다.*
<br>*Asks the delegate whether to relate selection and focus behavior for the row at the corresponding index path.*

