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
<br>*Asks your data source object for the cell that corresponds to the specified item in the collection view.


<br>


```swift
func collectionView(UICollectionView, viewForSupplementaryElementOfKind: String, at: IndexPath) -> UICollectionReusableView
```
: *collectionView에 표시할 supplementary view를 제공하도록 `dataSource`에 요청합니다.*
<br>*Asks your data source object to provide a supplementary view to display in the collection view.*