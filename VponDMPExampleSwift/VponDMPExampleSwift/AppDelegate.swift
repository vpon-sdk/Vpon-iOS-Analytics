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
        
        let config = VDAConfiguration()
        config.setLicenseKey("testkey", withCustomID: "customID", withOptIn: .default)
        config.setDebugMode(true)
        config.initialize()
        
        return true
    }
}

