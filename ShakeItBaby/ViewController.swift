//
//  ViewController.swift
//  ShakeItBaby
//
//  Created by Lamar Greene on 1/4/16.
//  Copyright © 2016 Lamar Greene. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer = AVAudioPlayer()
    var audioFile = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        audioFile = NSBundle.mainBundle().pathsForResourcesOfType(<#T##ext: String?##String?#>, inDirectory: <#T##String?#>) // NSBundle.mainBundle().pathsForResourcesOfType("mp3", inDirectory: "Audio")

    }
    
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if event?.subtype == UIEventSubtype.MotionShake {
        
            
        let audioFileRandom = Int(arc4random_uniform(UInt32(audioFile.count)))
            
            do
            {

                try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioFile[audioFileRandom]))
                
            
            } catch {
             
                // error stuff here
                
            }
            
            player.play()
        
        }
    }


}

