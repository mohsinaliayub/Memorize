//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Mohsin Ali Ayub on 01.08.24.
//

import SwiftUI

class EmojiMemoryGame {
    private var model = MemoryGame<String>(numberOfPairsOfCards: 4)
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
