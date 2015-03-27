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
    
    @IBAction func no0(sender: UIButton) {
        let theValueofresult = result.text
        
        println(" \(theValueofresult)")
        //let buttonthatyoupressed : String? = "0"
        
        let vl = buttonPress("0", tResult : theValueofresult!)
        result.text = vl
    }
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
    
    @IBAction func no3(sender: UIButton) {
        let theValueofresult = result.text
        
        println(" \(theValueofresult)")
        let vl = buttonPress("3", tResult : theValueofresult!)
        result.text = vl

    }
    
    @IBAction func no4(sender: UIButton) {
        let theValueofresult = result.text
        
        println(" \(theValueofresult)")
        let vl = buttonPress("4", tResult : theValueofresult!)
        result.text = vl
    }
    
    @IBAction func no5(sender: UIButton) {
        let theValueofresult = result.text
        
        println(" \(theValueofresult)")
        let vl = buttonPress("5", tResult : theValueofresult!)
        result.text = vl
    }
    @IBAction func no6(sender: UIButton) {
        let theValueofresult = result.text
        
        println(" \(theValueofresult)")
        let vl = buttonPress("6", tResult : theValueofresult!)
        result.text = vl
    }
    
    @IBAction func no7(sender: UIButton) {
        let theValueofresult = result.text
        
        println(" \(theValueofresult)")
        let vl = buttonPress("7", tResult : theValueofresult!)
        result.text = vl
    }
    @IBAction func no8(sender: UIButton) {
        let theValueofresult = result.text
        
        println(" \(theValueofresult)")
        let vl = buttonPress("8", tResult : theValueofresult!)
        result.text = vl
    }
    
    @IBAction func no9(sender: UIButton) {
        let theValueofresult = result.text
        
        println(" \(theValueofresult)")
        let vl = buttonPress("9", tResult : theValueofresult!)
        result.text = vl
    }
    @IBAction func noPlus(sender: UIButton) {
        let theValueofresult = result.text
        
        println(" \(theValueofresult)")
        let vl = buttonPress("+", tResult : theValueofresult!)
        result.text = vl
    }
    
    @IBAction func noequal(sender: UIButton) {
        let theValueofresult = result.text
        
        println(" \(theValueofresult)")
        let vl = buttonPress("=", tResult : theValueofresult!)
        result.text = vl
    }
    
    @IBOutlet var str1: UILabel!
    @IBOutlet var op: UILabel!
    @IBOutlet var str2: UILabel!
    
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

        
        if (button == "=")
        {
            let valueOfString = str2.text
            if ((valueOfString?.isEmpty) != nil)
            {
                str2.text = tResult
                Result9 = ""
                
                //let a:Int? = firstText.text.toInt() // firstText is UITextField

                let firstValue:Int? = str1.text?.toInt()
                let secondValue:Int? = str2.text?.toInt()
                let operandValue = op.text
                Result9 = calcFinalValue(firstValue!, secondValue : secondValue!, operandValue : operandValue!)
                
                return Result9
            }
        } else if (button == "+")
        {
            let valueOfString = str1.text
            if ((valueOfString?.isEmpty) != nil)
            {
                str1.text = tResult
                op.text = "+"
                Result9 = ""
                return Result9
            }
        } else if (button == "0" || button == "1" || button == "2" || button == "3" || button == "4" || button == "5" || button == "6" || button == "7" || button == "8" || button == "9" )
        {
            //println("inside button = 1")
            let Result9 = tResult + button
            return Result9
        } 
 return tResult
    }
    
    func calcFinalValue(firstValue: Int, secondValue: Int, operandValue: String) -> String
    {
        if (operandValue == "+")
        {
            let returnvalue = firstValue + secondValue
            let bodgiedreturnValue = toString(returnvalue)
            
            return bodgiedreturnValue
        }
        return "N/A"
    }

}