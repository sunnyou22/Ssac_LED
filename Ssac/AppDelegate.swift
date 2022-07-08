//
//  AppDelegate.swift
//  Ssac
//
//  Created by 방선우 on 2022/07/06.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // 앱을 실행할 때 최조로 실행하면 좋을 코드
        return true
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        sleep(1)
        
        return true
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        //유투브 - 사용자가 프리미엄 결제를 했으면 플레이하고 안하면 일시정지해라
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        //Active 상태로 돌아온 것
        //결제안한 사람한테 팝업띄워라 라고 명령할 수 있음
    }
     
     //위의 두 기능은 이제 iOS13부터 SceneDelegate로 옮겨감
    
    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

