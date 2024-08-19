//
//  CardView.swift
//  Memorize
//
//  Created by Mohsin Ali Ayub on 19.08.24.
//

import SwiftUI

struct CardView: View {
    let card: MemoryGame<String>.Card
    
    init(_ card: MemoryGame<String>.Card) {
        self.card = card
    }
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(card.content)
                    .font(.system(size: 200))
                    .minimumScaleFactor(0.01)
                    .aspectRatio(1, contentMode: .fit)
            }
            .opacity(card.isFaceUp ? 1 : 0)
            base.opacity(card.isFaceUp ? 0 : 1)
        }
        // if card is not matched, opaque. Otherwise, transparent.
        .opacity(card.isFaceUp || !card.isMatched ? 1 : 0)
    }
}

#Preview {
    typealias Card = MemoryGame<String>.Card
    
    return CardView(Card(content: "X", id: "test1"))
        .padding()
        .foregroundStyle(.green)
}