//
//  PlayersList.swift
//  PlayersApp
//
//  Created by Ramesh Boosa on 17/07/21.
//

import SwiftUI

struct PlayersList: View {
            
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("NBA Extra Players")) {
                    NavigationLink(
                        destination: AddAndEditPlayerView(),
                        label: {
                            Button(action: {}) {
                                HStack {
                                    Image(systemName: "person")
                                    Text("Add Player")
                                }
                            }.font(.system(size: 21, weight: .heavy, design: .default))
                        })
                    ForEach(extraPlayers) { aPlayer in
                        NavigationLink(
                            destination: AddAndEditPlayerView(),
                            label: {
                                TableRow(player: aPlayer)
                            })
                    }
                }
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
