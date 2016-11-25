//
//  InterfaceController.swift
//  WatchMotionDetect Extension
//
//  Created by Enkhjargal Gansukh on 24/11/2016.
//  Copyright © 2016 Enkhjargal Gansukh. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func startMotion() {
        CoreMotionService.instance.startMotion()
    }
    @IBAction func stopMotion() {
        CoreMotionService.instance.stopMotion()
    }
}
