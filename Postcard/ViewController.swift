//
//  ViewController.swift
//  Postcard
//
//  Created by Eddy G Mora on 12/18/14.
//  Copyright (c) 2014 identitybox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var recipientLabel: UILabel!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //test commits
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        
        recipientLabel.hidden = false
        recipientLabel.text = enterNameTextField.text
        recipientLabel.textColor = UIColor.greenColor()
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        
    //Hide the keyboard
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    //Hide the keyboard if the cursor is in the textfield
        enterNameTextField.resignFirstResponder()
    }

}

