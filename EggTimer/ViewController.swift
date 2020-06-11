//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progessBar: UIProgressView!
    
    let eggTimes = ["Soft": 3,"Medium":4,"Hard":7]
    var player: AVAudioPlayer!
    
  
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    var soundTitle = "alarm_sound"
    
    
    
    @IBAction func hardnessSelector(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle!
    
        totalTime = eggTimes[hardness]!
        progessBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        
      timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil,repeats: true)
    }
        @objc func updateTimer(){
            if secondsPassed < totalTime{
                
                secondsPassed += 1
                let percentageProgress = Float(secondsPassed)  / Float(totalTime)
                
                progessBar.progress = percentageProgress
               
                
            }else{
                timer.invalidate()
                titleLabel.text = "Done"
                self.playSound(soundTitle: soundTitle)
            }
        }
    
    
    //this is to play the done timer
    
    func playSound(soundTitle:String) {
        let url = Bundle.main.url(forResource: soundTitle, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
   
    
    
}
