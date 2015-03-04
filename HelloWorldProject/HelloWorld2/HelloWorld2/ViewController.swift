//
//  ViewController.swift
//  HelloWorld2
//
//  Created by Sean Reed on 3/3/15.
//  Copyright (c) 2015 Sean Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = "Hello Sean"
        
    }


}

