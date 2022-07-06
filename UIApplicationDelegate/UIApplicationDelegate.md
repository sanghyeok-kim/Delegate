# `UIApplication` - [Document](https://developer.apple.com/documentation/uikit/uiapplication)


<br>


# `UIApplicationDelegate` - [Document](https://developer.apple.com/documentation/uikit/uiapplicationdelegate)


<br>


## Initializing the App

```swift
func application(UIApplication, willFinishLaunchingWithOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool
```
: *`delegate`에게 실행 프로세스가 시작되었지만 상태 복원이 일어나지 않았음을 알립니다.*
<br>*Tells the delegate that the launch process has begun but that state restoration hasn’t occured.*


<br>


```swift
func application(UIApplication, didFinishLaunchingWithOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool
```
: *`delegate`에게 실행 프로세스가 거의 완료되었으며 앱을 실행할 준비가 거의 완료되었음을 알립니다.*
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

```swift
func application(UIApplication, configurationForConnecting: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration
```
: *새로운 Scene을 만들 때 사용할 UIKit의 구성 데이터를 검색합니다.*
<br>*Retrieves the configuration data for UIKit to use when creating a new scene.*


<br>

```swift
func application(UIApplication, didDiscardSceneSessions: Set<UISceneSession>)
```

: *사용자가 app switcher에서 하나 이상의 app scene을 닫았다고 `delegate`에게 알립니다.*
<br>*Tells the delegate that the user closed one or more of the app's scenes from the app switcher.*


<br>
<br>

## Responding to App Life-Cycle Events

```swift
func applicationDidBecomeActive(UIApplication)
```
: 앱이 active되었음을 `delegate`에게 알립니다.
<br>*Tells the delegate that the app has become active.*


<br>


```swift
func applicationWillResignActive(UIApplication)
```
: 앱이 곧 비활성화될 것임을 `delegate`에게 알립니다.
<br>*Tells the delegate that the app is about to become inactive.*


<br>


```swift
func applicationDidEnterBackground(UIApplication)
```
: 앱이 이제 background에 있음을 `delegate`에게 알립니다.
<br>*Tells the delegate that the app is now in the background.*


<br>


```swift
func applicationWillEnterForeground(UIApplication)
```
: 앱이 foreground로 진입하려 한다고 `delegate`에게 알립니다.
<br>*Tells the delegate that the app is about to enter the foreground.*


<br>


```swift
func applicationWillTerminate(UIApplication)
```
: 앱이 종료되려고 할 때 `delegate`에게 알립니다.
<br>*Tells the delegate when the app is about to terminate.*


<br>