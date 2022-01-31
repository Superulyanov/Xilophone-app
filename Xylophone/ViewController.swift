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
    
    var player : AVAudioPlayer!
    //var musicTracks = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func redKeyPressed(_ sender: UIButton) {
        print(sender.backgroundColor)
        playSound(soundName: "zvuk-notyi-do")
        
    }
    
    @IBAction func orangeKeyPressed(_ sender: UIButton) {
        playSound(soundName: "zvuk-notyi-re")
    }
    
    @IBAction func yellowKeyPressed(_ sender: UIButton) {
        playSound(soundName: "zvuk-notyi-mi")
    }
    
    @IBAction func greenKeyPressed(_ sender: UIButton) {
        playSound(soundName: "zvuk-notyi-fa")
    }


    @IBAction func purpleKeyPressed(_ sender: UIButton) {
        playSound(soundName: "zvuk-notyi-sol")
    }
    
    @IBAction func bluekeyPressed(_ sender: UIButton) {
        playSound(soundName: "zvuk-notyi-lya")
    }
    
    @IBAction func lightPurpleKeyPressed(_ sender: UIButton) {
        playSound(soundName: "zvuk-notyi-si")
    }
    
    
    func playSound(soundName: String) {
  
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
    
}

