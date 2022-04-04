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

<br>

```swift
func tableView(UITableView, indentationLevelForRowAt: IndexPath) -> Int
```
: *지정된 섹션의 행에 대한 들여쓰기 수준을 반환하도록 `delegate`에게 요청합니다.*

<br>

```swift
func tableView(UITableView, shouldSpringLoadRowAt: IndexPath, with: UISpringLoadedInteractionContext) -> Bool
```
: *테이블에 있는 행의 스프링 로딩 동작을 미세 조정할 수 있도록 호출됩니다.*

<br>
<br>

## Responding to Row Selections

```swift
func tableView(UITableView, willSelectRowAt: IndexPath) -> IndexPath?
```
: *`delegate`에게 행이 선택될 것임을 알립니다.*

<br>

