//
//  ContentView.swift
//  AnimationIdeaProject
//
//  Created by Berk Bozkurt on 2022-04-28.
//
// Rotating Arrow

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "arrow.clockwise")
            .resizable()
            .frame(width: 40, height: 40)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
