//
//  BikesRidersTableViewController.swift
//  BikesRidersPin
//
//  Created by IndyJCL on 18/03/2015.
//  Copyright (c) 2015 JCL. All rights reserved.
//

import UIKit

class BikesRidersTableViewController: UITableViewController {

    var bikeRidersNames =
    [
        "A. BAUTISTA",
        "A. DEANGLIS",
        "A. DOVIZIOSO",
        "A. ESPARGARO",
        "A. IANNONE",
        "B. SMITH",
        "C. CRUTCHLOW",
        "D. PEDROSA"]
    
    var bikeRidersNamesImages =
    [
        "ABautista.jpg",
        "ADeAngelis.jpg",
        "ADovizioso.jpg",
        "AEspargaro.jpg",
        "AIannone.jpg",
        "BSmith.jpg",
        "CCrutchlow.jpg",
        "DPedrosa.jpg"
            ]


    var bikeRidersTeam =
    [
        "Aprilia Racing Team Gresini",
        "Octo IodaRacing Team",
        "Ducati Team",
        "Team SUZUKI ECSTAR",
        "Ducati Team",
        "Monster Yamaha Tech 3",
        "CWM LCR Honda",
        "Repsol Honda Team"
    ]
    
    var bikeRidersMake =
    [
        "Aprilia",
        "Octo IodaRacing Team",
        "Ducati",
        "SUZUKI",
        "Ducati",
        "Yamaha",
        "Honda",
        "Honda"]

    //func addNewContact(riderName : String, riderTeam : String, bikeManufacturer: String )

    func addNewContact(riderName : String, bikeRidersTeam : String, bikeRidersMake : String)
    {
        
        bikeRidersNames.append(riderName)
        bikeRidersTeam.append(bikeRidersTeam)
        bikeRidersMake.append(bikeRidersMake)
        tableView.reloadData()
    }
    

    
    
    @IBAction func unwindFromAddNewRiderViewController(segue:UIStoryboardSegue)
    {
        let rider = (segue.sourceViewController as AddNewRiderViewController).renderForm()
        let bikeRidersTeam = "New Team"
        let bikeRidersMake = "New Make"
        self.addNewContact(riderName : rider, bikeRidersTeam: bikeRidersTeam, bikeRidersMake: bikeRidersMake)
        
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
        return self.bikeRidersNames.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as CustomTableViewCell
        
        // Configure the cell...
        cell.nameLabel?.text = bikeRidersNames[indexPath.row]
        cell.teamLabel?.text = bikeRidersTeam[indexPath.row]
        cell.bikeLabel?.text = bikeRidersMake[indexPath.row]
        cell.thumbnailImageView?.image = UIImage(named: bikeRidersNamesImages[indexPath.row])
        
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
        if editingStyle == .Delete {
            // Delete the row from the data source
            //tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            println("I am pressing delete")
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
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
        //println("id is \(segue.identifier)")
        if segue.identifier == "showBikeDetails" {
            if let indexPath = self.tableView.indexPathForSelectedRow()  {
                //println("indexpath is \(self.bikeRidersMake[indexPath.row])")
                let row = (view as UITableView).indexPathForSelectedRow()?.row
                //println("the row is \(row)")
                (segue.destinationViewController as detailsViewController).theBikeDetailsToShow = bikeRidersMake[row!]
            }
        }
    }
    

}
