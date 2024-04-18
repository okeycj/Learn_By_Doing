//
//  PlaySound.swift
//  Learn by Doing
//
//  Created by Chijindu Azubuike on 04/04/2024.
//

import Foundation
import AVFoundation

// MARK: - AUDIO PLAYER

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            DispatchQueue.main.async {
                audioPlayer?.play()
            }
        } catch {
            print("Could not find and play the sound file.")
        }
    }
}
