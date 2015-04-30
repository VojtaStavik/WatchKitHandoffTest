//
//  MainTabBarController.swift
//  HandoffTest
//
//  Created by Vojta Stavik on 30/04/15.
//  Copyright (c) 2015 STRV. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func restoreUserActivityState(activity: NSUserActivity) {
        
        switch activity.activityType {
            
        case ActivityKeys.ChooseColor:

            if let colorVC = viewControllers?[0] as? ChooseColorVC {
                
                colorVC.restoreUserActivityState(activity)
                selectedViewController = colorVC
            }

        case ActivityKeys.ChooseSize:

            if let sizeVC = viewControllers?[1] as? ChooseSizeVC {
                
                sizeVC.restoreUserActivityState(activity)
                selectedViewController = sizeVC
            }

            
        default:
            println("Unknown activity")
            
        }
    }
}
