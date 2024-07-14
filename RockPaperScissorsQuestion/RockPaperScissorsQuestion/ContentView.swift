//
//  ContentView.swift
//  RockPaperScissorsQuestion
//
//  Created by DK on 7/12/24.
//

import SwiftUI

struct EmojiQuestion: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 80))
            .padding()
            .background(.blue)
            .clipShape(.capsule)
    }
}



struct EmojiChoices: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 60))
            .padding()
            .background(.orange)
            .clipShape(.capsule)
    }
}

struct ContentView: View {
    @State private var choices = ["🪨", "📄", "✂️"]
    @State private var currentChoice = "🪨"
    @State private var win = Bool.random()
    @State private var displayOutcome = ""
    
    @State private var score = 0
    
    var body: some View {
        VStack {
            VStack {
                Spacer()
                HStack {
                    EmojiQuestion(text: currentChoice)
                }
                .padding()
                HStack {
                    Text("Which option to \(win ? "Win" : "Lose")?")
                        .font(.system(size: 25))
                }
                HStack {
                    Spacer()
                    Button(action: {
                        evaluateResult(question: currentChoice, user: choices[1], outcome: win)
                        
                    }, label: {
                        EmojiChoices(text: choices[1])
                    })
                    Spacer()
                    Button(action: {
                        evaluateResult(question: currentChoice, user: choices[2], outcome: win)
                    }, label: {
                        EmojiChoices(text: choices[2])
                    })
                    Spacer()
                }
                HStack {
                    Text("Score: \(score)")
                        .padding()
                        .font(.title)
                }
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
    
    func evaluateResult(question: String, user: String, outcome: Bool) {
        // if outcome is to win
        if outcome {
            if (question == "🪨" && user == "📄") || (question == "📄" && user == "✂️") || (question == "✂️" && user == "🪨"){
                score += 1
            } else {
                if score > 0 {
                    score -= 1
                }
            }
        }
    }
    
}

#Preview {
    ContentView()
}
