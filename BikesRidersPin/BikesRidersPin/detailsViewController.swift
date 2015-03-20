//
//  detailsViewController.swift
//  BikesRidersPin
//
//  Created by Joe Lemura on 20/03/2015.
//  Copyright (c) 2015 JCL. All rights reserved.
//

import UIKit

class detailsViewController: UIViewController {

    @IBOutlet var imageToShow: UIImageView!
    var theimageToShow : String!
    var theBikeDetailsToShow : String!
    
    @IBOutlet var bikeDetailsToShow: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        bikeDetailsToShow.text = theBikeDetailsToShow
        
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
