//
//  ViewController.swift
//  Xylophone-App-MyTake
//
//  Created by Sarthak Srivastava on 29/08/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        
       
    }

    func playSound(soundName: String) {
       let url = Bundle.main.url(forResource: soundName, withExtension: "wav")

            player = try! AVAudioPlayer(contentsOf: url!)

            player.play()
}

}
