//
//  MyTableViewController.swift
//  ListofNames Week4
//
//  Created by IndyJCL on 17/03/2015.
//  Copyright (c) 2015 JCL. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    //let names = ["P", "J", "Z"]
    
    //let names = [ ["Andy", "Amy"], ["Bob", "Brad"], ["Charlie", "Clark"] ]
    //let names = [
    //    "A" : ["Andy", "Amy"],
    //    "B" : ["Bob", "Brad"],
    //    "C" : ["Charlie", "Clark"]
    //]
    
    var names = [
        [
            "firstName" : "Jack",
            "lastName"  : "Jones",
            "emailName" : "jack@jack,com",
            "phoneNumber"     : "555-555-5555"
        ]
        ,
        [
            "firstName" : "John",
            "lastName"  : "Johnson",
            "emailName" : "john@jack,com",
            "phoneNumber"     : "555-123-4567"
        ]
    ]

    
    /*
    let sections = [
        "A" : ["Andy", "Amy"]
    ]
    */
    //names["A"][0]
    
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

    // MARK: - Table view delegate
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Tapped - Section: \(indexPath.section) Row: \(indexPath.row)")
        
    }
    
    
    
    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        //return 1
        //return countElements(names)
        return 1
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        //return countElements(names[section])
        //let nameKey = names.keys.array.reverse()[section]
        return countElements(names)

    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("titlecell", forIndexPath: indexPath) as UITableViewCell
        //let name = names[indexPath.row]
        //let name = names[indexPath.section][indexPath.row]
        
        //let nameKey = names.keys.array.reverse()[indexPath.section] as String
        
        //let name = names[nameKey]![indexPath.row]
        
        let contact = names[indexPath.row]
        let name = contact["firstName"]! + " " + contact["lastName"]!
        
        //cell.textLabel!.text = name
        cell.textLabel!.text = "\(name) Section: \(indexPath.section); Row \(indexPath.row);"
        

        // Configure the cell...

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

    
    func addNewContact(firstName : String, lastName : String, emailName: String, phoneNumber: String)
    {
        self.names.append(
        [
            "firstName"     : firstName,
            "lastName"      : lastName,
            "emailName"     : emailName,
            "phoneNumber"   : phoneNumber
        ])
        //self.addNewContact(firstName,lastName: lastName, emailName: emailName, phoneNumber: phoneNumber)
        tableView.reloadData()
    }
    
    // MARK: - Navigation

    @IBAction func unwindToMyTableViewController(segue : UIStoryboardSegue)
    {
        let contact = (segue.sourceViewController as addNamesViewController).renderForm()
        
        self.addNewContact(contact["firstName"]!!, lastName: contact["lastName"]!!, emailName: contact["emailAddress"]!!,phoneNumber: contact["phoneNumber"]!!)
        
    }
    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       if segue.identifier == "showNames"
       {
        println("showing AddNames")
        } else
        if segue.identifier == "toDetailScreen"
        {   // Get the new view controller using [segue destinationViewController].
            // Pass the selected object to the new view controller.
            //let section = (view as UITableView).indexPathForSelectedRow()?.section
            
            let row = (view as UITableView).indexPathForSelectedRow()?.row
            //let nameKey = names.keys.array.reverse()[section!]
            //(segue.destinationViewController as ViewController).name = names[nameKey]![row!]
            (segue.destinationViewController as ViewController).contact = names[row!]
        }
        
    }

}
