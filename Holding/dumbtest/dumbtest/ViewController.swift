//
//  ViewController.swift
//  dumbtest
//
//  Created by IndyJCL on 17/03/2015.
//  Copyright (c) 2015 JCL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func todo(sender: UISwipeGestureRecognizer) {
        println("swiped")
    }
    /*
    @IBAction func todo(sender: AnyObject) {
        println("swiped")
        
    }
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

