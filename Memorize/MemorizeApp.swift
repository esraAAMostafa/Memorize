//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Esraa Moustafa on 03/03/2023.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()

    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
