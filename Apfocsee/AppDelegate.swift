//
//  AppDelegate.swift
//  Apfocsee
//
//  Created by mumu on 2025/4/9.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let winaso = UINavigationController.init(rootViewController: APCELagfuseDxiu.init())
        winaso.navigationBar.isHidden = true
        self.window?.rootViewController = winaso
        self.window?.makeKey()
        return true
    }


}

