//
//  TableRow.swift
//  PlayersApp
//
//  Created by Ramesh Boosa on 17/07/21.
//

import SwiftUI

struct TableRow: View {
    
    var player: Player
    
    var body: some View {
        HStack(alignment: .center, spacing: 10, content: {
            BannerImageView(imageName: player.imageName, imageWidth: 60, imageHeight: 60)
                .scaledToFit()
                .clipShape(Circle())
                .background(Circle())
            
            TextView(value: player.name, fontSize: 21, fontWeight: .medium, textColor: Color(.label))
            
            Spacer()
        })
    }
}

struct TableRow_Previews: PreviewProvider {
    static var previews: some View {
       // TableRow(player: players[0]).previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 100))
        // TableRow(player: players[2]).previewLayout(.sizeThatFits)
       // TableRow(player: players[2]).previewLayout(.device ) == TableRow(player: players[2])
       /* Group {
            TableRow(player: players[2]).previewDevice("iPhone 8")
            TableRow(player: players[3]).previewDevice("iPhone 8").previewDisplayName("iPhone 8")
            TableRow(player: players[4]).previewDevice("iPhone 12 Pro").previewDisplayName("iPhone 12 Pro")
            TableRow(player: players[1]).previewDevice("iPhone 12 Pro Max").previewDisplayName("iPhone 12 Pro Max" )
        } */

        VStack {
            TableRow(player: players[0]).previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 100)).background(Color.gray)
            TableRow(player: players[1]).previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 100))
            TableRow(player: players[2]).previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 100))
        }
    }
}
