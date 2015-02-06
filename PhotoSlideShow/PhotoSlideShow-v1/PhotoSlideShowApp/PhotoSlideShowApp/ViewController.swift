//
//  ViewController.swift
//  PhotoSlideShowApp
//
//  Created by Sean on 2/6/15.
//  Copyright (c) 2015 Sean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!

    var currentPictureIndex:Int = 0

    
    var photoArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for index in 1...9{
            if let newImage = UIImage(named: "photo-\(index)-small.png"){
                photoArray.append(newImage)
            }

        }
        displayPicture()
    }

    func displayPicture(){
        
        myImageView.image = photoArray[abs(currentPictureIndex) % photoArray.count]
    }
    
    @IBAction func previousPicture(sender: UIButton) {
        currentPictureIndex -= 1
        displayPicture()
    }
    
    @IBAction func nextPicture(sender: UIButton) {
        currentPictureIndex += 1
        displayPicture()

    }
    
    @IBAction func randomizePictures(sender: UIButton) {
        currentPictureIndex = Int(arc4random())
        displayPicture()
    }

}

