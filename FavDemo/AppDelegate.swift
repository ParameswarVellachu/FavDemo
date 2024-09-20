//
//  AppDelegate.swift
//  FavDemo
//
//  Created by Parameswaran on 27/06/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
       
        
//        writePlist()
//        let arr = loadPropertyList()
//        print(arr!)
        
//        let arr = [["name":"params",
//                    "age":"30",
//                    "regid":"dtpl100",
//                    "designation":"ios-lead",
//                    "location":"chennai"],
//                    ["name":"params1",
//                                "age":"39",
//                                "regid":"dtpl101",
//                                "designation":"ios-lead",
//                                "location":"salem"]]
        
//        for dict in arr  {
//            dict.forEach { (key, val) in
//                saveData(numbertext: key, codetext: val)
//            }
//        }
    
        DBFileManager.shared.saveData()
        return true
    }
    
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
}

