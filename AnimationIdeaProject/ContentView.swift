//
//  ContentView.swift
//  AnimationIdeaProject
//
//  Created by Berk Bozkurt on 2022-04-28.
//
// Rotating Arrow

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properites
    // 1. Starting state for the rotation for the arrow.
    @State var clockWiseRotationAmount = 0.0
    
    @State var counterClockWiseRotationAmount = 0.0
    
    // 2. Create a timer to trigger the state change. after 2.5 seconds
    let timer = Timer.publish(every: 0.25, on: .main, in: .common).autoconnect()
    
    
    // MARK: Computed Properties
    
    
    
    
    var body: some View {
        ZStack {
            Image(systemName: "arrow.counterclockwise")
                .resizable()
                .frame(width: 100, height: 100)
            // Use the property to rotate the image.
                .rotation3DEffect(.degrees(counterClockWiseRotationAmount), axis: (x: 0, y: 0, z: -1))
            // Animate the change
                .animation(Animation
                    .linear(duration: 1.0)
                    .repeatForever(autoreverses: false)
                    )
            
            
            Image(systemName: "arrow.clockwise")
                .resizable()
                .frame(width: 40, height: 40)
            // Using the property to rotate the image.
                .rotation3DEffect(.degrees(clockWiseRotationAmount), axis: (x: 0, y: 0, z: 1))
            
            // Animate the change
                .animation(
                    Animation
                    .linear(duration: 1.0)
                    .repeatForever(autoreverses: false)
                )
           
            // Use the timer
                .onReceive(timer) { input in
                    // 3. Change the rotation amount of the arrow.
                    clockWiseRotationAmount = 360.0
                    counterClockWiseRotationAmount = 360.0
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
