# `UIApplication` - [Document](https://developer.apple.com/documentation/uikit/uiapplication)


<br>


# `UIApplicationDelegate` - [Document](https://developer.apple.com/documentation/uikit/uiapplicationdelegate)


<br>


## Initializing the App

```swift
func application(UIApplication, willFinishLaunchingWithOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool
```
: *delegate에게 실행 프로세스가 시작되었지만 상태 복원이 일어나지 않았음을 알립니다.*
<br>*Tells the delegate that the launch process has begun but that state restoration hasn’t occured.*


<br>


```swift
func application(UIApplication, didFinishLaunchingWithOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool
```
: *delegate에게 실행 프로세스가 거의 완료되었으며 앱을 실행할 준비가 거의 완료되었음을 알립니다.*
<br>*Tells the delegate that the launch process is almost done and the app is almost ready to run.*


<br>


```swift
struct UIApplication.LaunchOptionsKey
```
: *initialization될 때 시스템이 앱에 전달하는 launch options dictionary의 values에 엑세스하는 데 사용하는 keys입니다.*
<br>*The keys you use to access values in the launch options dictionary that the system passes to your app at initialization.*


<br>


```swift
class let didFinishLaunchingNotification: NSNotification.Name
```
: *앱 실행이 완료된 직후에 게시되는 notification입니다.*
<br>*A notification that posts immediately after the app finishes launching.*

<br>
<br>


## Configuring and Discarding Scenes
