//
//  ViewController.swift
//  ocarina
//
//  Created by Rodrigo Luz on 20/07/19.
//  Copyright © 2019 Rodrigo Luz. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  
    @IBAction func notePressed(_ sender: UIButton) {
        var sound = sender.tag
        playSound()
    }

    func playSound(){
        
        let url = Bundle.main.url(forResource: "a", withExtension: "wav")
        
        do {
            try player = AVAudioPlayer(contentsOf: url!)
        }
        catch {
            print(error)
        }
        player.play()
    }
}
//        let note = sender.tag
//        switch note {
//        case note: 1
//
//        case note: 2
//
//        case note: 3
//
//        case note: 4
//
//        case note: 5
//
//        default: break
//        }


