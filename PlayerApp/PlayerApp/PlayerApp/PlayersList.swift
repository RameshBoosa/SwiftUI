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
                            TextView(value: "Add Player", fontSize: 25, fontWeight: .heavy, textColor: .blue)
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

            }.listStyle(GroupedListStyle())
            .navigationBarTitle(Text("NBA Finals Players"), displayMode: .large)
        }
    }
}

struct PlayersList_Previews: PreviewProvider {
    static var previews: some View {
        PlayersList().previewDevice("iPhone 8 Plus").previewDisplayName("iPhone 8 Plus")
    }
}
