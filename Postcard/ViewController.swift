//
//  ViewController.swift
//  Postcard
//
//  Created by Michael Bryan on 9/12/14.
//  Copyright (c) 2014 Sugarloaf Mountain Photography. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // debug log output
        println("button Pressed")
        
        // Name Label
        // set name label visible, the copy text from name field, set color release keyboard
        println("processing name label")
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        nameLabel.textColor = UIColor.blueColor()
        
        // Message Label
        // set name label visible, the copy text from name field, set color release keyboard
        println("processing message label")
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.blueColor()
        
        // Send Mail Button
        // change button text to indicate mail was sent
        println("processing button")
        sendMailButton.setTitle("Postcard Sent", forState:UIControlState.Normal)
    }
}

