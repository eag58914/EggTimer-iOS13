//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let eggTimes = ["Soft": 5,"Medium":7,"Hard":12]
    

    @IBAction func hardnessSelector(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        print(hardness)
        
        if hardness == "Soft"{
            print(eggTimes["Soft"]!)
        }else if hardness == "Medium"{
            print(eggTimes["Medium"]!)
        }else{
            print(eggTimes["Hard"]!)
        }
    }
    
    

    
    
    
    
}
