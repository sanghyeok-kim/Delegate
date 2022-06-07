# `UITableView` - [Document](https://developer.apple.com/documentation/uikit/views_and_controls/table_views)


<br>


# `UITableViewDataSource` - [Document](https://developer.apple.com/documentation/uikit/uitableviewdatasource)

- `required` 
    -   ```swift
        func tableView(UITableView, numberOfRowsInSection: Int) -> Int
        ```
        : *tableView의 지정된 section에 있는 row 수를 반환하도록 `dataSource`에 지시합니다*
        <br>*Tells the data source to return the number of rows in a given section of a table view.*
    
    -   ```swift
        func tableView(UITableView, cellForRowAt: IndexPath) -> UITableViewCell
        ```
        : *tableView의 특정 위치에 삽입할 cell에 대한 `dataSource`를 요청합니다.*
        <br>*Asks the data source for a cell to insert in a particular location of the table view.*


<br>


## Providing the Number of Rows and Sections

```swift
func tableView(UITableView, numberOfRowsInSection: Int) -> Int
```
: *tableView의 지정된 section에 있는 row 수를 반환하도록 `dataSource`에 지시합니다*
<br>*Tells the data source to return the number of rows in a given section of a table view.*


<br>


```swift
func numberOfSections(in: UITableView) -> Int
```
: *`dataSource`에 tableView의 section 수를 반환하도록 요청합니다.*
<br>*Asks the data source to return the number of sections in the table view.*


<br>
<br>


## Providing Cells, Headers, and Footers
```swift
func tableView(UITableView, cellForRowAt: IndexPath) -> UITableViewCell
```
: *특정 위치에 삽입할 cell에 대한 dataSource를 요청합니다.*
<br>*Asks the data source for a cell to insert in a particular location of the table view.*


<br>


```swift
func tableView(UITableView, titleForHeaderInSection: Int) -> String?
```
: *지정된 section header title에 대한 dataSource를 요청합니다.*
<br>*Asks the data source for the title of the header of the specified section of the table view.*


<br>


```swift
func tableView(UITableView, titleForFooterInSection: Int) -> String?
```
: *지정된 section footer title에 대한 dataSource를 요청합니다.*
<br>*Asks the data source for the title of the footer of the specified section of the table view.*


<br>
<br>


## Inserting or Deleting Table Rows
```swift
func tableView(UITableView, commit: UITableViewCell.EditingStyle, forRowAt: IndexPath)
```
: *receiver에서 지정된 행의 삽입 또는 삭제를 commit하도록 dataSource에 요청합니다.*
<br>*Asks the data source to commit the insertion or deletion of a specified row in the receiver.*


<br>


```swift
func tableView(UITableView, canEditRowAt: IndexPath) -> Bool
```
: *dataSource에 지정된 행이 editable한지 확인하도록 요청합니다.*
<br>*Asks the data source to verify that the given row is editable.*


<br>
<br>


## Reordering Table Rows

```swift
func tableView(UITableView, canMoveRowAt: IndexPath) -> Bool
```
: *주어진 행을 tableView의 다른 위치로 이동할 수 있는지 여부를 `dataSource`에 묻습니다.*
<br>*Asks the data source whether a given row can be moved to another location in the table view.*


<br>


```swift
func tableView(UITableView, moveRowAt: IndexPath, to: IndexPath)
```
: *tableView의 특정 위치에 있는 행을 다른 위치로 이동하도록 `dataSource`에 지시합니다.*
<br>*Tells the data source to move a row at a specific location in the table view to another location.*


<br>
<br>


## Configuring an Index
```swift
func sectionIndexTitles(for: UITableView) -> [String]?
```
: *tableView의 section에 대한 title을 배열로 반환하도록 `dataSource`에 요청합니다.*
<br>*Asks the data source to return the titles for the sections of a table view.*


<br>


```swift
func tableView(UITableView, sectionForSectionIndexTitle: String, at: Int) -> Int
```
: *title과 section title index가 있는 section의 index를 반환하도록 `dataSource`에 요청합니다.*
<br>*Asks the data source to return the index of the section having the given title and section title index.*
