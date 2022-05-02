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
: *`dataSource`에 tableView의 섹션 수를 반환하도록 요청합니다.*
<br>*Asks the data source to return the number of sections in the table view.*

<br>
<br>

