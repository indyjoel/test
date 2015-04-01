//
//  BikesRidersTableViewController.swift
//  BikesRidersPin
//
//  Created by IndyJCL on 18/03/2015.
//  Copyright (c) 2015 JCL. All rights reserved.
//

import UIKit

class BikesRidersTableViewController: UITableViewController {

    var riders = [
    [
        "name" : "A. BAUTISTA",
        "image" : "ABautista.jpg",
        "team" : "Aprilia Racing Team Gresini",
        "bikemanufacturer" : "Aprilia"
    ]
    ,
    [
        "name" : "A. DEANGLIS",
        "image" : "ADeAngelis.jpg",
        "team" : "Octo IodaRacing Team",
        "bikemanufacturer" : "Customer Honda"

    ]
    ]

    //i cant add an image (actual picture) so the return display will be missing a pictue
    func addNewContact(name : String, team : String, bikemanufacturer: String, image: String)
    {
        //checking for blank names
        if (name != "" || team != "" || bikemanufacturer != "" || image != "") {
            self.riders.append(
                [
                "name"                  : name,
                "team"                  : team,
                "bikemanufacturer"      : bikemanufacturer,
                "image"                 : image
                ])
        
            tableView.reloadData()
        }
    }
    
    @IBAction func unwindFromAddNewRiderViewController(segue:UIStoryboardSegue)
    {
        let riders = (segue.sourceViewController as AddNewRiderViewController).renderForm()
        self.addNewContact(riders["name"]!!, team: riders["team"]!!, bikemanufacturer: riders["bikemanufacturer"]!!,image: riders["image"]!!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.riders.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as CustomTableViewCell
        
        // Configure the cell...
        let rider = riders[indexPath.row]
        
        cell.nameLabel?.text = rider["name"]
        cell.teamLabel?.text = rider["team"]
        cell.bikeLabel?.text = rider["bikemanufacturer"]
        cell.thumbnailImageView?.image = UIImage(named: rider["image"]!)
        
        //make it pretty
        cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.size.width / 2
        cell.thumbnailImageView.clipsToBounds = true
        
        return cell
    }
    
    //hide the status bar
    override func prefersStatusBarHidden() -> Bool {
            return true
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            riders.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }    
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

        //Prepare for the segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showBikeDetails" {
            if let indexPath = self.tableView.indexPathForSelectedRow()  {
                let row = (view as UITableView).indexPathForSelectedRow()?.row
                (segue.destinationViewController as detailsViewController).rider = riders[row!]
            }
        }
    }
    

}
