//
//  ContentView.swift
//  test
//
//  Created by Pranathi Singareddy on 10/3/20.
//

import SwiftUI
import UIKit


struct ContentView: View {
    @State private var showDetails = false
    @State private var showView = false
    @State private var showAbout = false
    var body: some View {
        NavigationView {
                    VStack {
                        Image("logoCircuitsTech")
                             .resizable()
                             .edgesIgnoringSafeArea(.all)
                             .scaledToFit()
                     
                         Text("Empathy Bytes")
                             .fontWeight(.bold)
                             .font(.custom("Georgia", size: 40))
                             .foregroundColor(Color(red: 0 / 255, green: 48 / 255, blue: 87 / 255))
                            .padding()
                        NavigationLink(destination: interviewView()) {
                            Text("Interviews")
                                .fontWeight(.bold)
                                .font(.custom("Georgia", size: 25))
                                .padding()
                                .background(Color(red: 0 / 255, green: 48 / 255, blue: 87 / 255))
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .padding(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color(red: 0 / 255, green: 48 / 255, blue: 87 / 255), lineWidth: 5)
                                )
                        }
                        NavigationLink(destination: musicView()) {
                            Text("Podcasts")
                                .fontWeight(.bold)
                                .font(.custom("Georgia", size: 25))
                                .padding()
                                .background(Color(red: 0 / 255, green: 48 / 255, blue: 87 / 255))
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .padding(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color(red: 0 / 255, green: 48 / 255, blue: 87 / 255), lineWidth: 5)
                                )
                        }
                        NavigationLink(destination: aboutView()) {
                            Text("About Us")
                                .fontWeight(.bold)
                                .font(.custom("Georgia", size: 25))
                                .padding()
                                .background(Color(red: 0 / 255, green: 48 / 255, blue: 87 / 255))
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .padding(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color(red: 0 / 255, green: 48 / 255, blue: 87 / 255), lineWidth: 5)
                                )
                        }
                    }
                }
        
       /* Image("logoCircuitsTech")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .scaledToFit()
    
        Text("Empathy Bytes")
            .fontWeight(.bold)
            .font(.largeTitle)
            .foregroundColor(.blue)*/
        /*VStack {
            Image("logoCircuitsTech")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .scaledToFit()
        
            Text("Empathy Bytes")
                .fontWeight(.bold)
                .font(.largeTitle)
                .foregroundColor(.blue)
            NavigationView {
                
                List() {
                    NavigationLink(
                                    destination: interviewView()) {
                                        Text("Interviews")
                                            /*.font(.title)
                                            .foregroundColor(Color.white)
                                            .multilineTextAlignment(.center)
                                            .frame(width: 300.0, height: 50.0)
                                            .background(Color.green)*/
                                            .fontWeight(.bold)
                                            .font(.title)
                                            .padding()
                                            .background(Color.blue)
                                            .cornerRadius(40)
                                            .foregroundColor(.white)
                                            .padding(10)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 40)
                                                    .stroke(Color.blue, lineWidth: 5)
                                            )
                                       
                                    }
                    NavigationLink(
                                    destination: aboutView()) {
                                        Text("About Us")
                                            /*.font(.title)
                                            .foregroundColor(Color.white)
                                            .multilineTextAlignment(.center)
                                            .frame(width: 300.0, height: 50.0)
                                            .background(Color.green)*/
                                            .fontWeight(.bold)
                                            .font(.title)
                                            .padding()
                                            .background(Color.blue)
                                            .cornerRadius(40)
                                            .foregroundColor(.white)
                                            .padding(10)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 40)
                                                    .stroke(Color.blue, lineWidth: 5)
                                            )
                                       
                                    }
                    NavigationLink(
                                    destination: podcastView()) {
                                        Text("Podcasts")
                                            /*.font(.title)
                                            .foregroundColor(Color.white)
                                            .multilineTextAlignment(.center)
                                            .frame(width: 300.0, height: 50.0)
                                            .background(Color.green)*/
                                            .fontWeight(.bold)
                                            .font(.title)
                                            .padding()
                                            .background(Color.blue)
                                            .cornerRadius(40)
                                            .foregroundColor(.white)
                                            .padding(10)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 40)
                                                    .stroke(Color.blue, lineWidth: 5)
                                            )
                                       
                                    }
                }
                
                /*Button(action: {
                                self.showDetails.toggle()
                            })
                {
                                Text("Podcasts")
                                    .fontWeight(.bold)
                                    .font(.title)
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(40)
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 40)
                                            .stroke(Color.blue, lineWidth: 5)
                                    )
                            }

                            if showDetails {
                                Text("This will link to podcast page")
                                    .font(.largeTitle)
                            }
            Button(action: {
                            self.showView.toggle()
                        }) {
                            Text("Website")
                                .fontWeight(.bold)
                                .font(.title)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .padding(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color.blue, lineWidth: 5)
                                )
                                
                
                        }

                        if showView {
                            Text("This will link to web page")
                                .font(.largeTitle)
                        }
                
            Button(action: {
                        self.showAbout.toggle()
                    }) {
                        Text("About Us")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.blue, lineWidth: 5)
                            )
                    }

                    if showAbout {
                        Text("This will link to about us page")
                            .font(.largeTitle)

                    }*/
                
            }
        }
        
        /*.frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(Color.yellow)
        .cornerRadius(10)
    
        .padding(.horizontal)*/
            }*/
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

