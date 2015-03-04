//
//  ViewController.swift
//  TextFieldDelegateDemo
//
//  Created by Sean on 2/13/15.
//  Copyright (c) 2015 Sean. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!{
        didSet{
            textField.delegate = self
        }
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true);
    }
}

