//
//  ContentView.swift
//  RockPaperScissorsQuestion
//
//  Created by DK on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var choices = ["Rock", "Paper", "Scissors"]
    @State private var currentChoice = "Rock"
    @State private var win = true
    
    @State private var playerChoice = ""
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
