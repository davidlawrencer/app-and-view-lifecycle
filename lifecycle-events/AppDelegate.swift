//
//  AppDelegate.swift
//  lifecycle-events
//
//  Created by David Rifkin on 1/14/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    //runs before scene delegate

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        //in this function, you can find out details about how the app launched -> .LaunchOptionKey.
        //ex: might see that the app was launched via push notification
        //but! push notification's payload might include more info about what you can do.
        //For further research, look into the concepts of "header/payload relationship" and "deeplinking" (navigate to specific experience)
        //ex: i've read the initial user (current user in firebase auth), and this person is a driver-type user, rather than a rider-type user, i could set those settings from here.
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle
    

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        //how should we set up the scene?
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        //thanks for the info, i'm going to go set that up now.
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

