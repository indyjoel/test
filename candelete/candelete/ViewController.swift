//
//  ViewController.swift
//  candelete
//
//  Created by IndyJCL on 15/03/2015.
//  Copyright (c) 2015 JCL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var didTap: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTap(sender: UISwipeGestureRecognizer) {
        println("Swiped")
    
    }

}

