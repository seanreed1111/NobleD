//
//  ViewController.swift
//  SampleVideoPlayer
//
//  Created by Sean Reed on 2/10/15.
//  Copyright (c) 2015 Sean Reed. All rights reserved.
//

// note: simulator is bugging when playing videos.
// That's just how it is.

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player1:         AVPlayer?
    var display:    AVPlayerLayer!
    
    
    override func viewWillAppear(animated:Bool) {
    
        super.viewWillAppear(animated)
        println("viewWillAppear")
        if  let videoURL = NSURL(string: "http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8"){
            
            if let myPlayer = AVPlayer(URL: videoURL) {
            
                player1 = myPlayer
                display = AVPlayerLayer(player: player1)
                println(self.view.frame)
                display.frame = CGRectMake(0.0, 0.0, 200.0, 200.0)
            
                self.view.layer.addSublayer(display)
            
                player1!.play()
            }
        }

    }


}

