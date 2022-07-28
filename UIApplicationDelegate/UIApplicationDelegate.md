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


```swift```swift
class let didFinishLaunchingNotification: NSNotification.Name
```
: ```
<br>*: *앱 실행이 완료된 직후에 게시되는 notification입니다.**
<br>*A notification that posts immediately after the app finis

<br>

hes launching.*


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
: 앱이 곧 inactive될 것임을 `delegate`에게 알립니다.
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
: 앱이 terminate되려고 할 때 `delegate`에게 알립니다.
<br>*Tells the delegate when the app is about to terminate.*


<br>

```swift
class let didBecomeActiveNotification: NSNotification.Name
```
: 앱이 active되면 게시되는 notification입니다.
<br>*A notification that posts when the app becomes active.*


<br>


```swift
class let didEnterBackgroundNotification: NSNotification.Name
```
: 앱이 background로 들어갈 때 게시되는 notification입니다.
<br>*A notification that posts when the app enters the background.*


<br>


```swift
class let willEnterForegroundNotification: NSNotification.Name
```
: 앱이 active app이 되기 위해 background 상태를 벗어나기 직전에 게시되는 notification입니다.
<br>*A notification that posts shortly before an app leaves the background state on its way to becoming the active app.*


<br>


```swift
class let willResignActiveNotification: NSNotification.Name
```
: 앱이 더 이상 active되지 않고 focus를 잃으면 게시되는 notification입니다.
<br>*A notification that posts when the app is no longer active and loses focus.*


<br>


```swift
class let willTerminateNotification: NSNotification.Name
```
: 앱이 terminate될 때 게시되는 notification입니다.
<br>*A notification that posts when the app is about to terminate.*


<br>
<br>


## Responding to Environment Changes

```swift
func applicationProtectedDataDidBecomeAvailable(UIApplication)
```
: protected file을 지금 사용할 수 있음을 `delegate`에게 알립니다.
<br>*Tells the delegate that protected files are available now.*


<br>


```swift
func applicationProtectedDataWillBecomeUnavailable(UIApplication)
```
: protected file을 사용할 수 없게 되었음을 `delegate`에게 알립니다.
<br>*Tells the delegate that the protected files are about to become unavailable.*


<br>


```swift
func applicationDidReceiveMemoryWarning(UIApplication)
```
: 앱이 시스템에서 메모리 경고를 받으면 `delegate`에게 알립니다.
<br>*Tells the delegate when the app receives a memory warning from the system.*


<br>


```swift
func applicationSignificantTimeChange(UIApplication)
```
: 시간에 중대한 변화가 있을 때 `delegate`에게 알립니다.
<br>*Tells the delegate when there is a significant change in the time.*


<br>
<br>


## Managing App State Restoration

```swift
func application(UIApplication, shouldSaveSecureApplicationState: NSCoder) -> Bool
```
: 앱의 상태를 안전하게 보존할지 여부를 `delegate`에게 묻습니다.
<br>*Asks the delegate whether to securely preserve the app’s state.*


<br>


```swift
func application(UIApplication, shouldRestoreSecureApplicationState: NSCoder) -> Bool
```
: 앱의 저장된 상태를 복원할지 여부를 `delegate`에게 묻습니다.
<br>*Asks the delegate whether to restore the app’s saved state.*


<br>


```swift
func application(UIApplication, viewControllerWithRestorationIdentifierPath: [String], coder: NSCoder) -> UIViewController?
```
: 지정된 viewController를 제공하도록 `delegate`에게 요청합니다.
<br>*Asks the delegate to provide the specified view controller.*


<br>


```swift
func application(UIApplication, willEncodeRestorableStateWith: NSCoder)
```
: `상태 보존 프로세스`를 시작할 때 `상위 수준 상태 정보`를 저장하도록 `delegate`에게 지시합니다.
<br>*Tells your delegate to save any high-level state information at the beginning of the state preservation process.*


<br>

```swift
func application(UIApplication, didDecodeRestorableStateWith: NSCoder)
```
: `delegate`에게 `상태 복원 프로세스`의 일부로 `상위 수준 상태 정보`를 복원하도록 지시합니다.
<br>*Tells your delegate to restore any high-level state information as part of the state restoration process.*


<br>

```swift
class let stateRestorationBundleVersionKey: String
```
: 복원 아카이브 생성을 담당하는 앱 버전
<br>*The version of your app responsible for creating the restoration archive.*


<br>

```swift
class let stateRestorationSystemVersionKey: String
```
: 앱이 복원 아카이브를 생성한 시스템의 버전
<br>*The version of the system on which your app created the restoration archive.*


<br>


```swift
class let stateRestorationTimestampKey: String
```
: 앱이 복원 아카이브를 만든 시간
<br>*The time your app created the restoration archive.*


<br>


```swift
class let stateRestorationUserInterfaceIdiomKey: String
```
: 앱이 복원 아카이브를 생성할 때 적용된 사용자 인터페이스 관용구
<br>*The user interface idiom that was in effect when your app created the restoration archive.*


<br>


```swift
class let stateRestorationViewControllerStoryboardKey: String
```
: 뷰 컨트롤러가 포함된 스토리보드에 대한 참조
<br>*A reference to the storyboard that contains the view controller.*


<br>
<br>


## Downloading Data in the Background

```swift
func application(UIApplication, handleEventsForBackgroundURLSession: String, completionHandler: () -> Void)
```
: URLSession과 관련된 이벤트가 처리되기를 기다리고 있음을 `delegate`에게 알립니다.
<br>*Tells the delegate that events related to a URL session are waiting to be processed.*


<br>


```swift
enum UIBackgroundFetchResult
```
: background fetch 작업의 결과를 나타내는 상수
<br>*Constants that indicate the result of a background fetch operation.*


<br>
<br>


## Handling Remote Notification Registration

