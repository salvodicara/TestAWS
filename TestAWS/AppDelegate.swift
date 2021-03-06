//
//  AppDelegate.swift
//  TestAWS
//
//  Created by Salvatore Di Cara on 22/07/2020.
//  Copyright © 2020 Salvatore Di Cara. All rights reserved.
//

import UIKit
import Amplify
import AmplifyPlugins

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let apiPlugin = AWSAPIPlugin(modelRegistration: AmplifyModels())
        //let dataStorePlugin = AWSDataStorePlugin(modelRegistration: AmplifyModels())
        do {
           try Amplify.add(plugin:apiPlugin)
           try Amplify.configure()
           print("Initialized Amplify");
           Amplify.Logging.logLevel = .info
        } catch {
           print("Could not initialize Amplify: \(error)")
        }
        //
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

