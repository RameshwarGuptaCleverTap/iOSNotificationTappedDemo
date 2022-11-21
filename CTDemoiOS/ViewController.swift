//
//  ViewController.swift
//  CTDemoiOS
//
//  Created by Rameshwar Gupta on 09/11/22.
//

import UIKit
import CleverTapSDK


class ViewController: UIViewController {
    
    let locationManager = CLLocationManager()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            CleverTap.sharedInstance()?.enableDeviceNetworkInfoReporting(true)
        
        }

}

