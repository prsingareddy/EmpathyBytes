//
//  Sounds.swift
//  test
//
//  Created by Molly Brigham on 10/30/20.
//

import Foundation
import AVFoundation
import UIKit

 class Sounds {

   static var audioPlayer:AVAudioPlayer?

   static func playSounds(soundfile: String) {

       if let path = Bundle.main.path(forResource: soundfile, ofType: nil){

           do{

               audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
               audioPlayer?.prepareToPlay()
               audioPlayer?.play()

           }catch {
               print("Error")
           }
       }
    }
 }
/*
 // Play a sound, optionally setting volume to the specified level
 func playSound(audioURL: URL?, setVolume: Bool = false, level: Float = 1.0) {
     if let audioUrl = audioURL {
         do {
             // Create an audio session for playback
             try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, with: .mixWithOthers)
             try AVAudioSession.sharedInstance().setActive(true)
             
             var volumeSlider: UISlider = UISlider()
             var origVolume: Float = 0.0
             if (setVolume) {
                 // Save the original volume level, then turn up the system volume
                 volumeSlider = (MPVolumeView().subviews.filter{NSStringFromClass($0.classForCoder) == "MPVolumeSlider"}.first) as! UISlider
                 origVolume = AVAudioSession.sharedInstance().outputVolume
                 volumeSlider.setValue(level, animated: false)
             }
             
             // Sound the alarm
             let player = try AVAudioPlayer(contentsOf: audioUrl)
             DispatchQueue.main.asyncAfter(deadline: .now() + player.duration) {
                 // Capture the AVPlayer instance in this closure to ensure is remains in scope until playback finishes
                 _ = player
                 if (setVolume) {
                     // After the duration of the audio, turn set the volume back to the previous level
                     volumeSlider.setValue(origVolume, animated: false)
                 }
             }
             player.play()
         } catch {
             print(error)
         }
     }
 }
 */
