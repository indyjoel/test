//
//  AddNewRiderViewController.swift
//  BikesRidersPin
//
//  Created by Joe Lemura on 20/03/2015.
//  Copyright (c) 2015 JCL. All rights reserved.
//

import UIKit

class AddNewRiderViewController: UIViewController {

    @IBOutlet var riderName: UITextField!
    @IBOutlet var riderTeam: UITextField!
    @IBOutlet var bikeManufacturer: UITextField!
    
    
    func renderForm() -> (String, String, String)
    {
        let riderNameToReturn : String = riderName.text
        let riderTeamToReturn = riderTeam.text
        let bikeManufacturerToReturn = bikeManufacturer.text
        
        return (riderNameToReturn,riderTeamToReturn,bikeManufacturerToReturn)
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
