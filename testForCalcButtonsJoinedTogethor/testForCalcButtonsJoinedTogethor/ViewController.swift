//
//  ViewController.swift
//  testForCalcButtonsJoinedTogethor
//
//  Created by IndyJCL on 12/03/2015.
//  Copyright (c) 2015 JCL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var theDigit: UIButton!
    
    @IBAction func theDigit(sender: UIButton) {
        var digit = theDigit.titleLabel?.text
        println("I was pressed \(digit)")
        
    }

}

