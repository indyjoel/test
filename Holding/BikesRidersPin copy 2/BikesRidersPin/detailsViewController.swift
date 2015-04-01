//
//  detailsViewController.swift
//  BikesRidersPin
//
//  Created by Joe Lemura on 20/03/2015.
//  Copyright (c) 2015 JCL. All rights reserved.
//

import UIKit

class detailsViewController: UIViewController {

    @IBOutlet var bikeDetailsToShow: UILabel!
    @IBOutlet var teamDetailsToShow: UILabel!
    @IBOutlet var bikeManufacturerToShow: UILabel!
    @IBOutlet var imageToShow: UIImageView!
    
    var rider = ["":""]

    
    //as i dont know how to add an image any new riders will show a blank image
    //but all fields must be entered
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tempRider = rider["name"]
        let teamName = rider["team"]
        let tempBikeManufacturer = rider["bikemanufacturer"]
        teamDetailsToShow.text = teamName
        bikeDetailsToShow.text = tempRider
        bikeManufacturerToShow.text = tempBikeManufacturer
        imageToShow.image =  UIImage(named: rider["image"]!)
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
