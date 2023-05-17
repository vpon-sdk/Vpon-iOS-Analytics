//
//  AppDelegate.swift
//  VponDMPExampleSwift
//
//  Created by Yi-Hsiang, Chien on 2020/11/23.
//

import UIKit
import VponDataAnalytics

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let config = VDAConfiguration.sharedInstance
        config.setLicenseKey("testkey", withCustomID: "customID", withOptIn: .default)
        config.setDebugMode(true)
        config.initialize()
        
        // Call startBackgroundLocationUpdate after initializing SDK
        // You can set update frequency to .high / .mid / .low
        config.startBackgroundLocationUpdate(frequency: .mid)
        
        return true
    }
}

