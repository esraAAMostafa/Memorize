//
//  MemoryGame.swift
//  Memorize
//
//  Created by Esraa Moustafa on 09.04.23.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        self.cards = Array<Card>()

        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    mutating func choose(_ card: Card) {
        let chosenIndex = Index(of: card)
        cards[chosenIndex].isFaceUp.toggle()
        print(cards)
    }
    
    func Index(of card: Card) -> Int {
        for index in 0..<cards.count {
            if card.id == cards[index].id {
                return index
            }
        }
        return 0 // bug
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        let content: CardContent
        let id: Int
    }
}
