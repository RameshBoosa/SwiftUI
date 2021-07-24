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
            List(players) {
                player in
                NavigationLink(
                    destination: PlayerDetailView(player: player),
                    label: {
                        TableRow(player: player)
                    })
            }.navigationBarTitle(Text("NBA Finals Players"), displayMode: .large)
        }
    }
}

struct PlayersList_Previews: PreviewProvider {
    static var previews: some View {
        PlayersList()
    }
}
