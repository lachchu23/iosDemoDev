//
//  ContentView.swift
//  First IOS Demo
//
//  Created by Luxshika Uthayakumar on 2023-09-11.
//

import SwiftUI

//@available(iOS, deprecated: 16.0, message: "Use NavigationLink(value:label:) instead.")


// This is the ContentView, which is the main SwiftUI view for the app.
struct ContentView: View {
    @State private var isNavigating = false // State variable to control navigation to WelcomeView
    
    var body: some View {
        NavigationStack{
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
                    destination: WelcomeView(), // Navigate to the WelcomeView when the button is tapped
                    //isActive: $isNavigating, // Control navigation with the isNavigating state variable
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
                //.isDetailLink(false)
                .navigationViewStyle(StackNavigationViewStyle()) // Use stack navigation view style
            }
        }
    }
}

// This is the preview provider for ContentView.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


