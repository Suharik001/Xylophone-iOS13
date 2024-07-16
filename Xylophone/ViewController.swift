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
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        func touchDown(){
            UIView.animate(withDuration: 0.2, animations: {
                sender.alpha = 0.5
                print("Start")
            })
        }
        touchDown()
        func touchUp(){
            UIView.animate(withDuration: 0.2, animations: {
                sender.alpha = 1
                print("End")
            })
        }
        let nameButton = sender.title(for: .normal)!
        
        playSound(soundName: nameButton)
        touchUp()
    }
  
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


