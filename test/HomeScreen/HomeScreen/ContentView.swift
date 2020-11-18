//
//  ContentView.swift
//  HomeScreen
//
//  Created by Pranathi Singareddy on 10/13/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 70) {
            
            CircleImage()
                .offset()
                .padding(.bottom, -75)
        

            VStack(alignment: .leading) {
              
                NavigationView {
                List() {
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            Text("About Us")
                        })
                    NavigationLink(
                        destination: Text("Destination"),
                        
                        label: {
                            Text("Interactive")
                        })
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            Text("Interviews")
                        })
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            Text("Website")
                        })
                } .navigationTitle("Empathy Bytes")
                }
                HStack(alignment: .top) {
                    
                }
            }
            .padding()

            Spacer(minLength: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
