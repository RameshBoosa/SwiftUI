//
//  AddAndEditPlayerView.swift
//  PlayerApp
//
//  Created by Ramesh Boosa on 25/07/21.
//

import SwiftUI

struct AddAndEditPlayerView: View {
    
    @State var playerName = " "
    @State var rating = 2.5
    @State var isSelected = false
    
    var body: some View {
        List {
            // Name Section
            Section {
                VStack(alignment: .leading) {
                    TitleView(title: "Player Name")
                    TextField("Enter name here...", text: $playerName)
                }
            }
            // Rating Section
            Section {
                VStack(alignment: .leading) {
                    TitleView(title: "Rating")
                    HStack {
                        Spacer()
                        TextView(value: String(repeating: "✪", count: Int(rating)), fontSize: 25, fontWeight: .thin, textColor: .yellow)
                        Spacer()
                    }
                    Slider(value: $rating, in: 0...5, step: 1)
                }
            }
            // Vote Section
            Section {
                VStack(alignment: .leading) {
                    TitleView(title: "Nominated")
                    Toggle(isOn: $isSelected) {
                        if playerName == "" {
                            Text("I have selected this player")
                        } else {
                            Text("I have selected \(playerName)")
                        }
                    }
                }
            }
            
            // Persist Player Data Section
            Section {
                HStack {
                    Spacer()
                    Button(action: {}, label: {
                        Text("Save")
                    })
                    Spacer()
                }
            }
            
        }.listStyle(GroupedListStyle())
    }
}

struct AddAndEditPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AddAndEditPlayerView().previewDevice("iPhone 8 Plus").previewDisplayName("iPhone 8 Plus")
    }
}
