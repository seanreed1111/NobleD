//
//  ViewController.swift
//  SampleVideoPlayer
//
//  Created by Sean Reed on 2/10/15.
//  Copyright (c) 2015 Sean Reed. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player1:         AVPlayer?
    var playerLayer:    AVPlayerLayer?


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let videoURLWithPath = "http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8"
        
        let videoURL = NSURL(string: videoURLWithPath)
        
        self.player1 = AVPlayer(URL: videoURL)
        
        playerLayer = AVPlayerLayer(player: player1)
        playerLayer!.frame = view.frame
        
        view.layer.addSublayer(playerLayer)
        
        player1!.play()

    }


}

