//
//  ViewController.swift
//  FizzBuzzProject
//
//  Created by Sean Reed on 2/8/15.
//  Copyright (c) 2015 Sean Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var fbObject = FizzBuzz()
    @IBOutlet weak var textField: UITextField!

    @IBOutlet weak var fizzBuzzLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
    }

    // textField delegate methods
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool{
        // implement textfield validation here
        // called BEFORE the text field resigns first responder status
        if let number = textField.text.toInt() {
            fizzBuzzLabel.text = "FizzBuzz of \"\(number)\" is \(fbObject.fizzBuzz(number))"
            return true
        }
        textField.text = nil
        return false
    }

    func textFieldShouldReturn (textField: UITextField) -> Bool{
        // true if the text field should implement its default behavior for the return button; otherwise, false.
        textField.resignFirstResponder()
        return true
    }

    // exercise: How do we make this so that if the use taps
    //anywhere on the keyboard, it will also come out of the text field
}



