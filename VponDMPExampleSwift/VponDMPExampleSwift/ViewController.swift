//
//  ViewController.swift
//  VponDMPExampleSwift
//
//  Created by Yi-Hsiang, Chien on 2020/11/23.
//

import UIKit
import VponDataAnalytics
import CoreLocation

class ViewController: UIViewController {

    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
    }
    
    @IBAction func sendEvent() {
        let tracker = VDATracker()
        let builder = VDABuilder.createEventWithEventName("login", extraData: ["key": "value"])
        tracker.send(builder)
    }
}

