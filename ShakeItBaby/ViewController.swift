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
        
        audioFile = Bundle.main.paths(forResourcesOfType: "mp3", inDirectory: "Audio")

    }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
        
        let audioFileRandom = Int(arc4random_uniform(UInt32(audioFile.count)))
            
            do
                
            {
                
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioFile[audioFileRandom]))
            
            } catch {
             
                // error stuff here, needs to be completed
                print("an error occurred")
                
            }
            
            player.play()
        
        }
    }
}

