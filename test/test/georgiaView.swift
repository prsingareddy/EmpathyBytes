//
//  georgiaView.swift
//  test
//
//  Created by Molly Brigham on 10/28/20.
//

import SwiftUI
import AVKit

struct georgiaView: View {
    var body: some View {
        VStack {
            Text("Ringgold, Georgia: Lara Langston")
                .font(.custom("Georgia", size: 30))
                .fontWeight(.black)
            VideoPlayer(player: AVPlayer(url: URL(string: "https://share.vidyard.com/watch/qRJvDxvJkGVL7b1vJvtzQm?")!)) {
                Text("Watermark")
                    .font(.caption)
                    .foregroundColor(.white)
                    .background(Color.black.opacity(0.7))
                    .clipShape(Capsule())
                Spacer()
            }
            
        }
        
    }
}

struct georgiaView_Previews: PreviewProvider {
    static var previews: some View {
        georgiaView()
    }
}

