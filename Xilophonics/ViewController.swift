//
//  ViewController.swift
//  Xilophonics
//
//  Created by Vanilla on 12/13/17.
//  Copyright © 2017 Digital Villa. All rights reserved.

import UIKit
import  AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func notePlayed(_ sender: UIButton) {
        audioPlayer(audio: "note"+String(sender.tag))
    }
    
    // AVA play Function 
    func audioPlayer (audio: String) {
        let soundUrl = Bundle.main.url(forResource: audio, withExtension: "wav")
        do {try player = AVAudioPlayer(contentsOf: soundUrl!)}
        catch {print(error)}
        player.play()
    }
}

