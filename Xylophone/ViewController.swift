//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundname: sender.currentTitle!)
        //Reduces the sender's (the button that got pressed) opacity to half.
                sender.alpha = 0.5
                
                //Code should execute after 0.2 second delay.
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    //Bring's sender's opacity back up to fully opaque.
                    sender.alpha = 1.0
        

        
    }
    
    
    func playSound(soundname: String) {
        let url = Bundle.main.url(forResource: soundname, withExtension: "wav")
            // telling player that "url" is the sound we want to play
            player = try! AVAudioPlayer(contentsOf: url!)
            // we actually play the sound
            player?.play()
        
    
            
        }
    
    
}

