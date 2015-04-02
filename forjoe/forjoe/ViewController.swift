//
//  ViewController.swift
//  forjoe
//
//  Created by Joe Lemura on 2/04/2015.
//  Copyright (c) 2015 Lemura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    func displayOutputOnScreen(pressed : String, digitpressed : Bool)
    {
        if digitPressed
        {
            if displayOutput.text == "0"
            {
                displayOutput.text = pressed
            }
            else
                {
                    displayOutput.text = displayOutput.text! + pressed
            }
        } else
        {
            op1.append = displayOutput.text
        }
    }

    op1 : Array = []
    var digitPressed = false
    
    @IBOutlet var displayOutput: UILabel!
    
    @IBAction func digitButtonPressed(sender: UIButton) {
        digitPressed = true
        let pressedbutton = sender.titleLabel?.text
        displayOutputOnScreen(pressedbutton!, digitpressed: digitPressed)
        
    }
    
    
    @IBAction func operatorPressed(sender: UIButton) {
        digitPressed = false
        let operatorPressed = sender.titleLabel?.text
        
        displayOutputOnScreen(operatorPressed!,digitpressed: digitPressed)
        
    }
    @IBAction func allClear(sender: UISwipeGestureRecognizer) {
        displayOutput.text = "0"
        
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

