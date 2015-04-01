//
//  ViewController.swift
//  Week 6 FInal Project
//
//  Created by Joe Lemura on 1/04/2015.
//  Copyright (c) 2015 Lemura. All rights reserved.
//




import UIKit

class ViewController: UIViewController {
    
    func divide()
    {
        if op2[0] == "0"
        {
            numberDisplay.text = "Err: Idiot/0"
        } else
        {
            var result : Float = NSString(string: op1[0]).floatValue / NSString(string: op2[0]).floatValue
            numberDisplay.text = toString(result)
        }
    }
    

    func multiply()
    {
        var result : Float = NSString(string: op1[0]).floatValue * NSString(string: op2[0]).floatValue
        numberDisplay.text = toString(result)
    }
    
    
    func plus()
    {
        var result : Float = NSString(string: op1[0]).floatValue + NSString(string: op2[0]).floatValue
        numberDisplay.text = toString(result)
    }
    
    
    func minus()
    {
        var result : Float = NSString(string: op1[0]).floatValue - NSString(string: op2[0]).floatValue
        numberDisplay.text = toString(result)
        op1.removeAll()
        op2.removeAll()
        opToPerform = ""
        equalPressed = false
    }
    
    @IBOutlet var numberDisplay: UILabel!
    
    var op1 : [String] = []
    var op2 : [String] = []
    var opToPerform : String = ""
    var equalPressed = false
    var operatorPressedButton = false
    
    func updateDisplay(numberToAdd : String)
    {
        if !operatorPressedButton
        {
            if numberDisplay.text == "0" && numberToAdd == "."
            {
                numberDisplay.text = "0" + toString(numberToAdd)
                
            } else
            if numberDisplay.text == "0"
            {
                numberDisplay.text = toString(numberToAdd)
           }
            else
            {
                numberDisplay.text = numberDisplay.text! + toString(numberToAdd)
            }
            
        } else
            if operatorPressedButton
        {
            if numberDisplay.text == "\\" || numberDisplay.text == "*" || numberDisplay.text == "+" || numberDisplay.text == "-"
            {
                numberDisplay.text = toString(numberToAdd)
                
            } else
            {
                numberDisplay.text = numberDisplay.text! + toString(numberToAdd)
            }
        }
    }
    
    
    @IBAction func allClear(sender: UISwipeGestureRecognizer) {
        op1.removeAll()
        op2.removeAll()
        opToPerform = ""
        numberDisplay.text = "0"
        
    }
    
    @IBAction func equalPressed(sender: UIButton) {
        if op1.count > 0
        {
            equalPressed = true
            op2.append(numberDisplay.text!)
            //println("Pressed Equal and Op1 is \(op1) and Op2 is \(op2)")
            //println("Operator to Preform is \(opToPerform)")
            println("Equal Pressed is \(equalPressed)")
            switch opToPerform {
            case "\\" :
                divide()
            case "*" :
                multiply()
            case "+" :
                plus()
            case "-" :
                minus()
            default :
                numberDisplay.text = "IDIOT"
            }
        }
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
            if !equalPressed
            {
                var digitPressed = sender.titleLabel?.text?
                updateDisplay(digitPressed!)
            } else
                {
                    numberDisplay.text = ""
                    op1.removeAll()
                    op2.removeAll()
                    opToPerform = ""
                    var digitPressed = sender.titleLabel?.text?
                    updateDisplay(digitPressed!)
                    
                }
        }
    
    
    @IBAction func operatorPressed(sender: UIButton) {
        let pressedNo = sender.titleLabel?.text
        //println("Display.text is \(numberDisplay.text) Pressed No is \(pressedNo) Op1 is \(op1) and Op2 is \(op2)")

        if numberDisplay.text! == "0"
        {
            numberDisplay.text = "Dont be an IDIOT"
        } else
        if op1.count > 0
        {
            op2.append(numberDisplay.text!)
            numberDisplay.text = sender.titleLabel?.text
            operatorPressedButton = true
            let operatorToPerform = sender.titleLabel?.text
            //println("Operator to do is \(operatorToPerform)")
            //println("Op1 is \(op1) and Op2 is \(op2)")

        } else if op1.count == 0
        {
    
                op1.append(numberDisplay.text!)
                numberDisplay.text = sender.titleLabel?.text
                opToPerform = numberDisplay.text!
                operatorPressedButton = true
                //println("Op1 is \(op1) and Op2 is \(op2)")
                //println("Operator to do is \(opToPerform)")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

