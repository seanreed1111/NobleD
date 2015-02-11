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

    var asset :         AVAsset?
    var playerItem:     AVPlayerItem?
    var player:         AVPlayer?
    var playerLayer:    AVPlayerLayer?


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // "http://www.thumbafon.com/code_examples/video/segment_example/prog_index.m3u8"
        // "http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8"
        
        let videoURLWithPath = "http://www.thumbafon.com/code_examples/video/segment_example/prog_index.m3u8"
        
        let videoURL = NSURL(string: videoURLWithPath)
        
//        asset = AVAsset.assetWithURL(videoURL) as? AVAsset
        
//        playerItem = AVPlayerItem(asset: asset)
//        player = AVPlayer(playerItem: playerItem)
        
        var player2 = AVPlayer(URL: videoURL)
        
        playerLayer = AVPlayerLayer(player: player2)
        playerLayer!.frame = view.frame
        
        view.layer.addSublayer(playerLayer)
        
        player2.play()
        println("Fast forward available: \(player2.currentItem.canPlayFastForward)")
    }


}

