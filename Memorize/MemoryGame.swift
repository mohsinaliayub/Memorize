//
//  MemoryGame.swift
//  Memorize
//
//  Created by Mohsin Ali Ayub on 01.08.24.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
