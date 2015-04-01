//
//  ViewController.swift
//  testforTableViewController
//
//  Created by IndyJCL on 17/03/2015.
//  Copyright (c) 2015 JCL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        println("I am running prepareforSegue inside Main VC")
        if segue.identifier == "cellTapped" {
        //if let indexPath = self.tableView.indexPathForSelectedRow() {
        //let destinationController = segue.destinationViewController as DetailViewController
        //destinationController.restaurantImage = self.restaurantImages[indexPath.row]
        //}
        }
    }

}

