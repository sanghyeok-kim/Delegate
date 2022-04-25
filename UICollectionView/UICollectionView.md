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
: *지정된 path의 item이 선택 취소되었음을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the item at the specified path was deselected.*

<br>

```swift
func collectionView(UICollectionView, shouldBeginMultipleSelectionInteractionAt: IndexPath) -> Bool
```
: *사용자가 collection view에서 two-finger pan gesture를 사용하여 여러 item을 선택할 수 있는지 `delegate`에게 묻습니다.*
<br>*Asks the delegate whether the user can select multiple items using a two-finger pan gesture in a collection view.*

<br>

```swift
func collectionView(UICollectionView, didBeginMultipleSelectionInteractionAt: IndexPath)
```
: *사용자가 collection view에서 여러 item을 선택하기 위해 two-finger pan gesture를 사용하기 시작할 때 `delegate`에게 알립니다.*
<br>*Tells the delegate when the user starts using a two-finger pan gesture to select multiple items in a collection view.*

<br>

```swift
func collectionViewDidEndMultipleSelectionInteraction(UICollectionView)
```
: *사용자가 collection view에서 여러 item을 선택하기 위해 two-finger pan gesture 사용을 중지할 때 `delegate`에게 알립니다.*
<br>*Tells the delegate when the user stops using a two-finger pan gesture to select multiple items in a collection view.*

<br>
<br>

## Managing Cell Highlighting

```swift
func collectionView(UICollectionView, shouldHighlightItemAt: IndexPath) -> Bool
```
: *추적하는 동안 item을 highlight해야 하는지 `delegate`에게 묻습니다.*
<br>*Asks the delegate if the item should be highlighted during tracking.*

<br>

```swift
func collectionView(UICollectionView, didHighlightItemAt: IndexPath)
```
: *지정된 indexPath의 item이 highlight되었음을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the item at the specified index path was highlighted.*

<br>

```swift
func collectionView(UICollectionView, didUnhighlightItemAt: IndexPath)
```
: *지정된 indexPath에 있는 item에서 highlight가 제거되었음을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the highlight was removed from the item at the specified index path.*


<br>
<br>

## Tracking the Addition and Removal of Views

```swift
func collectionView(UICollectionView, willDisplay: UICollectionViewCell, forItemAt: IndexPath)
```
: *지정된 cell이 collection view에 표시될 것임을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the specified cell is about to be displayed in the collection view.*

<br>

```swift
func collectionView(UICollectionView, willDisplaySupplementaryView: UICollectionReusableView, forElementKind: String, at: IndexPath)
```
: *지정된 supplementary view가 collection view에 표시될 것임을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the specified supplementary view is about to be displayed in the collection view.*

<br>

```swift
func collectionView(UICollectionView, didEndDisplaying: UICollectionViewCell, forItemAt: IndexPath)
```
: *지정된 cell이 collection view에서 제거되었음을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the specified cell was removed from the collection view.*

<br>

```swift
func collectionView(UICollectionView, didEndDisplayingSupplementaryView: UICollectionReusableView, forElementOfKind: String, at: IndexPath)
```
: *지정된 supplementary view가 collection view에서 제거되었음을 `delegate`에게 알립니다.*
<br>*Tells the delegate that the specified supplementary view was removed from the collection view.*

<br>
<br>

## Handling Layout Changes

```swift
func collectionView(UICollectionView, transitionLayoutForOldLayout: UICollectionViewLayout, newLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
```
: *지정된 레이아웃 사이를 이동할 때 사용할 custom transition layout을 요청합니다.*
<br>*Asks for the custom transition layout to use when moving between the specified layouts.*

<br>

```swift
func collectionView(UICollectionView, targetContentOffsetForProposedContentOffset: CGPoint) -> CGPoint
```
: *`delegate`에게 레이아웃 변경 및 애니메이션 업데이트에 대한 content offset을 customzie할 수 있는 기회를 제공합니다.*
<br>*Gives the delegate an opportunity to customize the content offset for layout changes and animated updates.*

<br>
<br>