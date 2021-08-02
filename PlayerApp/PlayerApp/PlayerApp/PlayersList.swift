//
//  PlayersList.swift
//  PlayersApp
//
//  Created by Ramesh Boosa on 17/07/21.
//

import SwiftUI

struct PlayersList: View {
    
    @ObservedObject var playerStore = PlayerStore()

    var body: some View {
        NavigationView {
            List {
                
                // New Players Section
                Section(header: Text("Nominated Players")) {
                    NavigationLink(
                        destination: AddAndEditPlayerView(player: Player(), playerStore: playerStore, isNewPlayer: true),
                        label: {
                            Button(action: {}) {
                                HStack {
                                    Image(systemName: "person")
                                    Text("Add Player")
                                }
                            }.font(.system(size: 21, weight: .heavy, design: .default))
                        })
                    ForEach(playerStore.newPlayers) { player in
                        NavigationLink(
                            destination: AddAndEditPlayerView(player: player, playerStore: playerStore, isNewPlayer: false),
                            label: {
                                TableRow(player: player)
                            })
                    }
                }
                
                // Extra Players Section
                Section(header: Text("NBA Extra Players")) {
                    ForEach(extraPlayers) { aPlayer in
                        NavigationLink(
                            destination: AddAndEditPlayerView(player: Player(), playerStore: playerStore, isNewPlayer: false),
                            label: {
                                TableRow(player: aPlayer)
                            })
                    }
                }
                
                // Final Players Section
                Section(header: Text("NBA Final Players")) {
                    ForEach(players) { player in
                        NavigationLink(
                            destination: PlayerDetailView(player: player),
                            label: {
                                TableRow(player: player)
                            })
                    }
                }

            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("NBA Finals Players"), displayMode: .large)
            .accentColor(Color(.label))
        }
    }
}

struct PlayersList_Previews: PreviewProvider {
    static var previews: some View {
        PlayersList().preferredColorScheme(.dark).previewDevice("iPhone 8 Plus").previewDisplayName("iPhone 8 Plus")
    }
}
