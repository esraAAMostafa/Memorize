//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Esraa Moustafa on 09.04.23.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    
    static let emojis = ["😀", "😃", "😄", "😅", "😂",
                         "🤣", "🥲", "😊", "😇", "😍",
                         "🥰", "😘", "😗", "😉", "😌",
                         "😋", "😛", "🤩", "🥳", "🙁",
                         "😎", "🥸", "😔", "🥺"]
    
    static func createCardContent() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createCardContent()

    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - intent(s)
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
