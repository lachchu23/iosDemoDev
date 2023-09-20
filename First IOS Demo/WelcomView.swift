//
//  WelcomView.swift
//  First IOS Demo
//
//  Created by Luxshika Uthayakumar on 2023-09-19.
//

import SwiftUI

struct WelcomeView: View {
    @State private var name: String = ""          //Statevariable to store the user's name
    @State private var address: String = ""       //Statevariable to store the user's address
    @State private var isDisplayingInfo = false    //Statevariable to control the display of user information
    @State private var actuatorStrength: Double = 50
    @State private var deviceFeedback: Int = 5 // Default value set to 5
    
    // Emojis corresponding to numbers 1 to 10
    let emojis = ["😡", "😞", "😐", "🙂", "😀", "😄", "😁", "😊","🤩","😍"]
    
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
            
            // Add a Slider for Actuator Strength
            Slider(value: $actuatorStrength, in: 1...100, step: 1) {
                Text("Actuator Strength")
            }
            .padding()

            // Display Actuator Strength Percentage
            Text("Actuator Strength: \(Int(actuatorStrength))%")
                .bold()
                .padding()
            
            Picker("Device Feedback", selection: $deviceFeedback) {
                ForEach(1...10, id: \.self) { feedback in
                    Text("\(feedback)")
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            // Use a HStack to display the emoji corresponding to the selected feedback
            HStack {
                Text("Device Feedback: ")
                Text(emojis[deviceFeedback - 1]) // Subtract 1 since arrays are 0-based
                    .font(.largeTitle)
            }
            .padding()
            
            Button(action: {
                isDisplayingInfo.toggle() // Toggle the flag to display or hide user information
            }) {
                Text("Display")
                    .font(.headline)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
                        
            if isDisplayingInfo {
                Text("Name: \(name)\nAddress: \(address)") //Display user information if the flag is true
                    .bold()
                    .padding()
            }
        }
        .padding()
    }
}

// This is the preview provider for WelcomeView.
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
