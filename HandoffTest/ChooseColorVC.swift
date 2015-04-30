//
//  ChooseColorVC.swift
//  HandoffTest
//
//  Created by Vojta Stavik on 30/04/15.
//  Copyright (c) 2015 STRV. All rights reserved.
//

import UIKit

class ChooseColorVC: UIViewController {

    var initialValue = 0
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        segmentedControl.selectedSegmentIndex = initialValue
    }
    
    override func restoreUserActivityState(activity: NSUserActivity) {
        
        if let currentSelection = activity.userInfo?["current"] as? Int {
            
            initialValue = currentSelection
            segmentedControl?.selectedSegmentIndex = currentSelection
        }
    }

}

