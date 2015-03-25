//
//  PlayersTableViewController.swift
//  Soccer P1
//
//  Created by Joe Lemura on 25/03/2015.
//  Copyright (c) 2015 Lemura. All rights reserved.
//

import UIKit

class PlayersTableViewController: UITableViewController {

    var Players = [
        [
            "first" : "John",
            "last"  : "Smith"
        ],
        [
            "first" : "Fred",
            "last"  : "Jones"
        ]

        ]
    
    func addNewPlayer(first : String , last : String)
    {
        //checking for blank names
        if (first != "" && last != "" ) {
            self.Players.append(
                [
                    "first" : first,
                    "last"  : last,
                ])
            
            tableView.reloadData()
        }
    }

    
    @IBAction func unwindFromAddNewPlayerVC (segue:UIStoryboardSegue)
    {
        let players = (segue.sourceViewController as AddNewPlayerVCViewController).renderForm()

        self.addNewPlayer(players["first"]!!, last: players["last"]!!)
        
        
        
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
        return countElements(Players)
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("testCell", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        let playersCell = Players[indexPath.row]
        
        cell.textLabel?.text = playersCell["first"]! + " " + playersCell["last"]!
        
        return cell
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
