//
//  ViewController.swift
//  Calc Project
//
//  Created by Joe Lemura on 4/03/2015.
//  Copyright (c) 2015 Lemura. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    @IBOutlet var result: UILabel!
    
    @IBAction func no1(sender: UIButton) {
        let theValueofresult = result.text
        
        println(" \(theValueofresult)")
        //let buttonthatyoupressed : String? = "1"
        
        let vl = buttonPress("1", tResult : theValueofresult!)
        result.text = vl
    }
    
    @IBAction func no2(sender: UIButton) {
        let theValueofresult = result.text
        
        println(" \(theValueofresult)")
        let vl = buttonPress("2", tResult : theValueofresult!)
        result.text = vl

    }
    
    @IBAction func noPlus(sender: UIButton) {
        
    }
    override func viewDidLoad() {
        
        result.text = ""
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func buttonPress(button: String , tResult: String) -> String
    {
        var Result9 : String
        if (button == "1" || button == "2")
        {
            //println("inside button = 1")
            let Result9 = tResult + button
            return Result9
        } else
            {
                return tResult
            }
    }

}

