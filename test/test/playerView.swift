//
//  playerView.swift
//  test
//
//  Created by Molly Brigham on 10/30/20.
//

import SwiftUI
import AVKit
import AVFoundation
import UIKit

struct playerView: View {
    private let player = AVPlayer(url: URL(string: "https://www.youtube.com/watch?v=4Ei8ferOFE0&feature=emb_logo")!)
       
       var body: some View {
         VideoPlayer(player: player)
                .onAppear() {
                    // Start the player going, otherwise controls don't appear
                    player.play()
                }
                .onDisappear() {
                    // Stop the player when the view disappears
                    player.pause()
                }
       }
}

struct playerView_Previews: PreviewProvider {
    static var previews: some View {
        playerView()
    }
}

