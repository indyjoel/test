//
//  CellPressedTableVCViewController.swift
//  testforTableViewController
//
//  Created by IndyJCL on 18/03/2015.
//  Copyright (c) 2015 JCL. All rights reserved.
//

import UIKit

class CellPressedTableVCViewController: UIViewController {

   
    @IBOutlet var imageToLoad: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("I did load the CellPressedTableVC")
        imageToLoad.image = UIImage(named: "placeHolder")
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "showRestaurantDetail" {
        //if let indexPath = self.tableView.indexPathForSelectedRow() {
            //let destinationController = segue.destinationViewController as DetailViewController
            //destinationController.restaurantImage = self.restaurantImages[indexPath.row]
            //}
        //}
    }
}
