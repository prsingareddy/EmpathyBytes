//
//  aboutView.swift
//  test
//
//  Created by Molly Brigham on 10/28/20.
//

import SwiftUI
import UIKit
import AVFoundation


struct aboutView: View {
    @State private var showDetails = false
    @State private var showView = false
    @State private var showAbout = false
    var bombSoundEffect: AVAudioPlayer?
    var body: some View {
        
        NavigationView {
            VStack {
                Text("About Us")
                    .font(.custom("Georgia", size: 25))
                    
                
                
            }
        }
       
        
        /*.frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(Color.yellow)
        .cornerRadius(10)
    
        .padding(.horizontal)*/
            }
    
}

struct aboutView_Previews: PreviewProvider {
    static var previews: some View {
        aboutView()
    }
}



