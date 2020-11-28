//
//  ViewController.swift
//  test
//
//  Created by Molly Brigham on 10/12/20.
//

import Foundation
import UIKit
import AVKit
import AVFoundation
 
class ViewController: UIViewController {
    //MARK: Properties
    
   /* @IBOutlet weak var ebIcon: UIImageView!
    @IBOutlet var titleLabel: UIView!
    
    
    @IBOutlet weak var micIcon: UIImageView!
    
        @IBOutlet weak var intIcon: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    // MARK: Actions
    
    @IBAction func PodcastButton(_ sender: UIButton) {
        
        

    }
    
    @IBAction func InterviewButton(_ sender: UIButton) {
        
    }
    
    @IBAction func AboutButton(_ sender: UIButton) {
        
    }*/
    


        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            playVideo()
        }

        private func playVideo() {
            guard let path = Bundle.main.path(forResource: "langston", ofType:"m4v") else {
                debugPrint("video.m4v not found")
                return
            }
            let player = AVPlayer(url: URL(fileURLWithPath: path))
            let playerController = AVPlayerViewController()
            playerController.player = player
            present(playerController, animated: true) {
                player.play()
            }
        }
    
    
}

