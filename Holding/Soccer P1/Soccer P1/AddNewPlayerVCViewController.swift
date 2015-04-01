//
//  AddNewPlayerVCViewController.swift
//  Soccer P1
//
//  Created by Joe Lemura on 25/03/2015.
//  Copyright (c) 2015 Lemura. All rights reserved.
//

import UIKit

class AddNewPlayerVCViewController: UIViewController {


    @IBOutlet var firstName: UITextField!
    @IBOutlet var lastName: UITextField!
    
    
    func renderForm() -> [String : String?]
    {
        let Players = [
            "first"     : firstName.text,
            "last"      : lastName.text,
        ]
        return Players
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
