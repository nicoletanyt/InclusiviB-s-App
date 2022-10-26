//
//  ContentView.swift
//  Emoji Party
//
//  Created by Jia Chen Yee on 19/7/22.
//

import SwiftUI

struct ContentView: View {
    
    var emojiSets = [
        EmojiSet(name: "Fruits", emojis: ["🍌", "🍎", "🍓", "🍉", "🍍", "🥑"]),
        EmojiSet(name: "Candy", emojis: ["🍫", "🍭", "🍬"]),
        EmojiSet(name: "Chaotic Swift Students", emojis: ["😾", "😬", "🤡", "📢", "😵‍💫", "🐧"])
    ]
        
    var body: some View {
        NavigationView {
            List(emojiSets) { emojiSet in
                NavigationLink {
                    EmojiView(emojiSet: emojiSet)
                } label: {
                    VStack(alignment: .leading) {
                        Text(emojiSet.name)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            
                        Text(emojiSet.emojis.joined())
                    }
                }

            }
            .navigationTitle("Emoji Set")
        }
        .navigationViewStyle(.automatic)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
