//
//  ContentView.swift
//  Memorize
//
//  Created by Esraa Moustafa on 03/03/2023.
//

import SwiftUI

struct ContentView: View {
    var vehicleEmojis = ["🚘", "✈️", "🚆", "🚌", "🚒",
                         "🚛", "🦼", "🛵", "🚔", "🚞",
                         "🚠", "🚋", "🚄", "🚝", "🚈",
                         "🚊", "🚉", "🛫", "🛬", "💺",
                         "⛴", "🚢", "🛶", "🚤", "🛳",
                         "🚲"]
    
    var faceEmojis = ["😀", "😃", "😄", "😅", "😂",
                      "🤣", "🥲", "😊", "😇", "😍",
                      "🥰", "😘", "😗", "😉", "😌",
                      "😋", "😛", "🤩", "🥳", "🙁",
                      "😎", "🥸", "😔", "🥺"]
    
    var planetEmojis = ["🌵", "🎄", "🌲", "🌳", "🌴",
                        "🌱", "🌿", "☘️", "🍀", "🎍",
                        "🪴", "🎋", "🍃", "🌹", "🍁",
                        "🍄", "🌾", "💐", "🌷", "🥀",
                        "🌺", "🌼", "🌻", "🪵", "🍇"]
    
    @State var emojis: [String]
    @State var emojiCount = 4

    init() {
        emojis = vehicleEmojis
    }
    
    var body: some View {
        VStack {
            Text("Memorize!")
                .font(.largeTitle)
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)

            Spacer()
            
            HStack {
                vehicle
                Spacer()
                face
                Spacer()
                planet
            }
        }
        .padding()
    }
    
    var vehicle: some View {
        Button {
            setupEmojis(vehicleEmojis)
        } label: {
            VStack {
                Image(systemName: "car")
                    .font(.largeTitle)
                Text("Vehicles")
            }
        }
    }
    
    var face: some View {
        Button {
            setupEmojis(faceEmojis)
        } label: {
            VStack {
                Image(systemName: "face.smiling")
                    .font(.largeTitle)
                Text("Faces")
            }
        }
    }
    
    var planet: some View {
        Button {
            setupEmojis(planetEmojis)
        } label: {
            VStack {
                Image(systemName: "sun.max")
                    .font(.largeTitle)
                Text("Planets")
            }
        }
    }
    
    func setupEmojis(_ emojis: [String]) {
        self.emojis = emojis.shuffled()
        self.emojiCount = Int.random(in: 4...emojis.count)
    }
}

struct CardView: View {
    
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
