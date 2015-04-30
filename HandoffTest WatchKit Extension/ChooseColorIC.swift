//
//  InterfaceController.swift
//  HandoffTest WatchKit Extension
//
//  Created by Vojta Stavik on 30/04/15.
//  Copyright (c) 2015 STRV. All rights reserved.
//

import WatchKit
import Foundation


class ChooseColorIC: WKInterfaceController {

    override func willActivate() {
        super.willActivate()
        updateUserActivity(ActivityKeys.ChooseColor, userInfo: [NSObject: AnyObject](), webpageURL: nil)
    }

    @IBOutlet weak var button0: WKInterfaceButton!
    @IBOutlet weak var button1: WKInterfaceButton!
    @IBOutlet weak var button2: WKInterfaceButton!
    
    // This could have been done better, I know. But it's ok for testing like this.
    
    @IBAction func button0Pressed() {
        
        updateUserActivity(ActivityKeys.ChooseColor, userInfo: ["current": 0], webpageURL: nil)
        button0.setBackgroundColor(UIColor.darkGrayColor())
        
        button1.setBackgroundColor(UIColor.clearColor())
        button2.setBackgroundColor(UIColor.clearColor())
    }
    
    @IBAction func button1Pressed() {
        
        updateUserActivity(ActivityKeys.ChooseColor, userInfo: ["current": 1], webpageURL: nil)
        button1.setBackgroundColor(UIColor.darkGrayColor())
        
        button0.setBackgroundColor(UIColor.clearColor())
        button2.setBackgroundColor(UIColor.clearColor())
    }
    
    
    @IBAction func button2Pressed() {

        updateUserActivity(ActivityKeys.ChooseColor, userInfo: ["current": 2], webpageURL: nil)
        button2.setBackgroundColor(UIColor.darkGrayColor())
        
        button0.setBackgroundColor(UIColor.clearColor())
        button1.setBackgroundColor(UIColor.clearColor())
    }
}
