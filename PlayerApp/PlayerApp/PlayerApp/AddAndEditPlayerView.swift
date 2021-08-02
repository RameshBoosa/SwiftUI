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
    
    @State var player: Player
    @ObservedObject var playerStore: PlayerStore
    @Environment(\.presentationMode) var presentationMode//: Binding<PresentationMode>
    var isNewPlayer: Bool
    
    var body: some View {
        List {
            // Name Section
            Section {
                VStack(alignment: .leading) {
                    TitleView(title: "Player Name")
                    TextField("Enter name here...", text: $player.name)
                }
            }
            // Rating Section
            Section {
                VStack(alignment: .leading) {
                    TitleView(title: "Rating")
                    HStack{
                        Spacer()
                        TextView(value: String(repeating: "★", count: Int(player.rating)), fontSize: 25, fontWeight: .thin, textColor: .yellow)
                        Spacer()
                    }
                   Slider(value: $player.rating, in: 0...5, step: 1)
                }
            }
            // Vote Section
            Section {
                VStack(alignment: .leading) {
                    TitleView(title: "Nominated")
                    Toggle(isOn: $player.isSelected) {
                        if player.name == "" {
                            Text("I have selected this player")
                        } else {
                            Text("I have selected \(player.name)")
                        }
                    }
                }
            }
            
            // Persist Player Data Section
            if isNewPlayer {
                Section {
                    HStack {
                        Spacer()
                        Button("Save") {
                            self.playerStore.addPlayerToList(player: self.player)
                            self.presentationMode.wrappedValue.dismiss()
                            
                        }
                        Spacer()
                    }
                }
            }
        
        }.listStyle(GroupedListStyle())
    }
}

struct AddAndEditPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AddAndEditPlayerView(player: Player(), playerStore: PlayerStore(), isNewPlayer: true).previewDevice("iPhone 8 Plus").previewDisplayName("iPhone 8 Plus")
    }
}
