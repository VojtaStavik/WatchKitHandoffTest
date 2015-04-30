//
//  AppDelegate.swift
//  HandoffTest
//
//  Created by Vojta Stavik on 30/04/15.
//  Copyright (c) 2015 STRV. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func application(application: UIApplication, continueUserActivity userActivity: NSUserActivity, restorationHandler: ([AnyObject]!) -> Void) -> Bool {
        
        window?.rootViewController?.restoreUserActivityState(userActivity)
        return true
    }
}

