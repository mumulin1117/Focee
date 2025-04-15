//
//  AppDelegate.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/9.
//

import UIKit
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        initRootCnotrollerAppWind()
        self.window?.makeKeyAndVisible()
        APCELSureEmailfuseDxiu.trallgleAppUserDemo()//test
        
        SwiftyStoreKit.completeTransactions(atomically: true) { resultPaying in
           
            for aitmt in resultPaying {
                switch aitmt.transaction.transactionState {
                case .purchased, .restored:
                   
                    let miaj = aitmt.transaction.downloads
                    
                    if !miaj.isEmpty  {
                   
                        SwiftyStoreKit.start(miaj)
                    } else if aitmt.needsFinishTransaction {
                      
                        SwiftyStoreKit.finishTransaction(aitmt.transaction)
                    }
                case .failed, .purchasing, .deferred:
                    break
                @unknown default:
                  break
                }
            }
        }
        return true
    }


    func initRootCnotrollerAppWind()  {
       
        if UserDefaults.standard.object(forKey: "mamaFlyainguser") != nil{
            window?.rootViewController = APCELBarliDxiuController()

            return
        }
        
        let flayu = UINavigationController.init(rootViewController: APCELagfuseDxiu.init())
        flayu.navigationBar.isHidden = true
        window?.rootViewController = flayu
    }
    
}

