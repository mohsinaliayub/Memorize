//
//  ContentView.swift
//  Memorize
//
//  Created by Mohsin Ali Ayub on 20.06.24.
//

import SwiftUI

struct ContentView: View {
    private let emojis = ["👻", "🎃", "🕷️", "😈"]
    
    var body: some View {
        HStack {
            CardView(content: emojis[0])
            CardView(content: emojis[1])
            CardView(content: emojis[2], isFaceUp: true)
            CardView(content: emojis[3], isFaceUp: true)
        }
        .foregroundStyle(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
