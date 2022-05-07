# `UICollectionView` - [Document](https://developer.apple.com/documentation/uikit/uicollectionview)


<br>


# `UICollectionViewDataSource` - [Document](https://developer.apple.com/documentation/uikit/uicollectionviewdatasource)

- `required` 
    -   ```swift
        func collectionView(UICollectionView, numberOfItemsInSection: Int) -> Int
        ```
        : *collectionView의 지정된 section에 있는 item 수를 반환하도록 `dataSource`에 지시합니다*
        <br>*Asks your data source object for the number of items in the specified section.*
    
    -   ```swift
        func collectionView(UICollectionView, cellForItemAt: IndexPath) -> UICollectionViewCell
        ```
        : *collectionView의 특정 위치에 삽입할 cell에 대한 `dataSource`를 요청합니다.*
        <br>*Asks your data source object for the cell that corresponds to the specified item in the collection view.*


<br>


## Getting Item and Section Metrics

```swift
func collectionView(UICollectionView, numberOfItemsInSection: Int) -> Int
```
: *collectionView의 지정된 section에 있는 item 수를 반환하도록 `dataSource`에 지시합니다*
<br>*Asks your data source object for the number of items in the specified section.*


<br>



```swift
func numberOfSections(in: UICollectionView) -> Int
```
: *collectionView의 section 수를 `dataSource`에 묻습니다.*
<br>*Asks your data source object for the number of sections in the collection view.


<br>
<br>


## Getting Views for Items

```swift
func collectionView(UICollectionView, cellForItemAt: IndexPath) -> UICollectionViewCell
```
: *collectionView에서 지정된 item에 해당하는 cell에 대해 `dataSource`에 요청합니다.*
<br>*Asks your data source object for the cell that corresponds to the specified item in the collection view.*


<br>


```swift
func collectionView(UICollectionView, viewForSupplementaryElementOfKind: String, at: IndexPath) -> UICollectionReusableView
```
: *collectionView에 표시할 supplementary view를 제공하도록 `dataSource`에 요청합니다.*
<br>*Asks your data source object to provide a supplementary view to display in the collection view.*


<br>
<br>


## Reordering Items
```swift
func collectionView(UICollectionView, canMoveItemAt: IndexPath) -> Bool
```
: *지정된 item을 collectionView의 다른 위치로 이동할 수 있는지 여부를 `dataSource`에 묻습니다.*
<br>*Asks your data source object whether the specified item can be moved to another location in the collection view.*


<br>


```swift
func collectionView(UICollectionView, moveItemAt: IndexPath, to: IndexPath)
```
: *`dataSource`에 지정된 item을 새 위치로 이동하도록 지시합니다.*
<br>*Tells your data source object to move the specified item to its new location.*


<br>
<br>


## Configuring an Index
```swift
func indexTitles(for: UICollectionView) -> [String]?
```
: *collectionView에 표시할 index item들의 title 배열을 반환하도록 `dataSource`에 요청합니다.*
<br>*Asks the data source to return the titles for the index items to display for the collection view.*


<br>


```swift
func collectionView(UICollectionView, indexPathForIndexTitle: String, at: Int) -> IndexPath
```
: *index 목록 중 하나에 해당하는 collectionView item의 indexPath를 반환하도록 `dataSource`에 요청합니다.*
<br>*Asks the data source to return the index path of a collection view item that corresponds to one of your index entries.*