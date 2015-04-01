//
//  ViewController.swift
//  ListofNames Week4
//
//  Created by IndyJCL on 17/03/2015.
//  Copyright (c) 2015 JCL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var contact = ["":""]
   
    
    @IBOutlet var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameLabel.text = contact["firstName"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

