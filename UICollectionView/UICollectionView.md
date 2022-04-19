# `UICollectionView` - [Document](https://developer.apple.com/documentation/uikit/uicollectionview)

<br>

# `UICollectionViewDelegate` - [Document](https://developer.apple.com/documentation/uikit/uicollectionviewdelegate)

- `required` : *없음*

<br>

## Managing the Selected Cells

```swift
func collectionView(UICollectionView, shouldSelectItemAt: IndexPath) -> Bool
```
: *지정된 item을 선택해야 하는지 `delegate`에게 묻습니다.*
<br>*Asks the delegate if the specified item should be selected.*

<br>

```swift
func collectionView(UICollectionView, didSelectItemAt: IndexPath)
```
: *지정된 indexPath에 있는 item이 선택되었음을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the item at the specified index path was selected.*

<br>

```swift
func collectionView(UICollectionView, shouldDeselectItemAt: IndexPath) -> Bool
```
: *지정된 item을 선택 해제해야 하는지 `delegate`에게 묻습니다.*
<br>*Asks the delegate if the specified item should be deselected.*

<br>

```swift
func collectionView(UICollectionView, didDeselectItemAt: IndexPath)
```
: *지정된 경로의 item이 선택 취소되었음을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the item at the specified path was deselected.*

<br>

