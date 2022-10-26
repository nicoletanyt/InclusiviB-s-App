//
//  ContentView.swift
//
//

import SwiftUI

struct Homepage: View {
    init() { UITableView.appearance().backgroundColor = UIColor.clear }
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    ForEach(availableApps) { app in
                        NavigationLink {
                            DetailedTutorials(app: app)
                        } label: {
                            HStack {
                                Image(app.imageURL)
                                    .resizable()
                                    .frame(width: 100, height: 100, alignment: .center)
                                    .padding()
                                Text(app.name)
                                    .bold()
                                    .foregroundColor(Color.yellow)
                                    .font(.system(size: 30))
                            }
                        }
                    }
                }
                .navigationTitle("Homepage")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
