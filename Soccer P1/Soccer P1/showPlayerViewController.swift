//
//  showPlayerViewController.swift
//  Soccer P1
//
//  Created by IndyJCL on 25/03/2015.
//  Copyright (c) 2015 Lemura. All rights reserved.
//

import UIKit

class showPlayerViewController: UIViewController {

    @IBOutlet var firstName: UILabel!
    @IBOutlet var lastName: UILabel!
    
    var Players = ["" : ""]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        firstName.text = Players["first"]
        lastName.text = Players["last"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
