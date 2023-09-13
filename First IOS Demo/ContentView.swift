//
//  ContentView.swift
//  First IOS Demo
//
//  Created by Luxshika Uthayakumar on 2023-09-11.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            // Logo or App Icon
            Image(systemName: "figure.run.circle")
                .font(.largeTitle)
                .padding(.top, 100)
            
            // Welcome Message
            Text("QuickShed")
                .font(.title2)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding(.top, 30)
            
            Text("Welcome, Let's start working out !")
                .font(.caption)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
                .padding(.top, 20)
            
            // Get Started Button
            NavigationLink(
                destination: ContentView(), // Replace with the main content view of your app
                label: {
                    Text("Get Started")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(30)
                        .padding(.top, 100)
                }
            )
        }
    }
}

struct ContentView: View {
    @State private var name: String = ""
    @State private var address: String = ""
    @State private var isDisplayingInfo = false
    
    var body: some View {
        
        /*LinearGradient(gradient: Gradient(colors: [.gray, .blue]), startPoint: .bottom, endPoint: .top)
                    .ignoresSafeArea()*/
        VStack {
            Image(systemName: "figure.cooldown")
                .imageScale(.large)
                .foregroundColor(.red)
                .padding()
            
            TextField("Enter Your Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                        
            TextField("Enter Your Address", text: $address)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                isDisplayingInfo.toggle()
            }) {
                Text("Display")
                    .font(.headline)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
                        
            if isDisplayingInfo {
                Text("Name: \(name)\nAddress: \(address)")
                    .bold()
                    .padding()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
