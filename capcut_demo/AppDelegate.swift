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
        let second = secondVC()
        let third = thirdVC()
        let forth = forthVC()
        
        nav.tabBarItem = UITabBarItem(title: "1", image: UIImage(named: "3"), selectedImage: UIImage(named: "3"))
        second.tabBarItem = UITabBarItem(title: "1", image: UIImage(named: "4"), selectedImage: UIImage(named: "4"))
        third.tabBarItem = UITabBarItem(title: "1", image: UIImage(named: "5"), selectedImage: UIImage(named: "5"))
        forth.tabBarItem = UITabBarItem(title: "1", image: UIImage(named: "6"), selectedImage: UIImage(named: "6"))
        
        let bar = UITabBarController()
        bar.viewControllers = [nav, second, third, forth]
        bar.tabBar.isTranslucent = true
        bar.tabBar.bounds = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 30)
        window?.rootViewController = bar
        window?.backgroundColor = .purple
        window?.makeKeyAndVisible()
        return true
    }
}

