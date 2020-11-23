//
//  ViewController.swift
//  VponDMPExampleSwift
//
//  Created by Yi-Hsiang, Chien on 2020/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendEvent() {
        let builder = VpadnAnaDictionaryBuilder.createEvent(withEventName: "login", extraData: [:])
        VpadnAnalytics.sharedInstance()?.defaultTracker.send(builder)
    }
}

