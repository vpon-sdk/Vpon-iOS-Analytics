//
//  ViewController.swift
//  VponDMPExampleSwift
//
//  Created by Yi-Hsiang, Chien on 2020/11/23.
//

import UIKit
import VponDataAnalytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendEvent() {
        let tracker = VDATracker()
        let builder = VDABuilder.createEventWithEventName("login", extraData: ["key": "value"])
        tracker.send(builder)
    }
}

