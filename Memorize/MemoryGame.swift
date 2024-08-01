//
//  MemoryGame.swift
//  Memorize
//
//  Created by Mohsin Ali Ayub on 01.08.24.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int) {
        cards = []
    }
    
    func choose(_ card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
