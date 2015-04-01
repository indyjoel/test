//
//  addNamesViewController.swift
//  ListofNames Week4
//
//  Created by IndyJCL on 19/03/2015.
//  Copyright (c) 2015 JCL. All rights reserved.
//

import UIKit

class addNamesViewController: UIViewController {

    
    @IBOutlet var firstName: UITextField!
    @IBOutlet var lastName: UITextField!
    @IBOutlet var phoneNumber: UITextField!
    @IBOutlet var emailAddress: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func renderForm() -> [String : String?]
        {
            let contact = [
                "firstName"     : firstName.text,
                "lastName"      : lastName.text,
                "phoneNumber"   : phoneNumber.text,
                "emailAddress"  : emailAddress.text
            ]
            return contact
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
