//
//  AppDelegate.swift
//  capcut_demo
//
//  Created by 澈水 on 2021/12/18.
//

import UIKit
/*
 不习惯使用SceneDelegate可以将其删除，按原来的方式进行项目开发
 删除操作：
 1、SceneDelegate文件删除
 2、AppDelegate文件中函数application(_:configurationForConnecting:options:)和application(_:didDiscardSceneSessions:)删除
 3、Info.plist文件中Application Scene Manifest删除
 */
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let nav = UINavigationController(rootViewController: ViewController())
        window?.rootViewController = nav
        window?.backgroundColor = .purple
        window?.makeKeyAndVisible()
        return true
    }
}

