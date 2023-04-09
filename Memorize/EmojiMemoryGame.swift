//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Esraa Moustafa on 09.04.23.
//

import Foundation

class EmojiMemoryGame {
    
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
    
    private var model: MemoryGame<String> = createCardContent()

    var card: Array<MemoryGame<String>.Card> {
        model.cards
    }

}
