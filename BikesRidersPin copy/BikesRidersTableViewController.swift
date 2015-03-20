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
        "D. PEDROSA",
        "D. PETRUCCI",
        "E. LAVERTY",
        "H. BARBERA",
        "J. LORENZO",
        "J. MILLER",
        "K. ABRAHAM",
        "L. BAZ",
        "M. DI MEGLIO",
        "M. MARQUEZ",
        "M. MELANDRI",
        "N. VINALES",
        "N. HAYDEN",
        "P. ESPARGARO",
        "S. BRADL",
        "S. REDDING",
        "V. ROSSI",
        "Y. HERNANDEZ"
    ]
    
    
    var bikeRidersNamesImages =
    [
        "ABautista.jpg",
        "ADeAngelis.jpg",
        "ADovizioso.jpg",
        "AEspargaro.jpg",
        "AIannone.jpg",
        "BSmith.jpg",
        "CCrutchlow.jpg",
        "DPedrosa.jpg",
        "DPetrucci.jpg",
        "ELaverty.jpg",
        "HBarbera.jpg",
        "JLorenzo.jpg",
        "JMiller.jpg",
        "KAbraham.jpg",
        "LBaz.jpg",
        "MDiMeglio.jpg",
        "MMarquez.jpg",
        "MMelandri.jpg",
        "NVinales.jpg",
        "NHayden.jpg",
        "PEspargo.jpg",
        "SBradl.jpg",
        "SRedding.jpg",
        "VRossi.jpg",
        "YHernandez.jpg"
    ]
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
        cell.thumbnailImageView?.image = UIImage(named: bikeRidersNamesImages[indexPath.row])
        
        cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.size.width / 2
        cell.thumbnailImageView.clipsToBounds = true
        
        return cell
    }
    
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

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
