//
//  ContentView.swift
//  SwiftUI_WorkShop
//
//  Created by Ramesh Boosa on 18/07/21.
//

import SwiftUI

struct PlayerDetailView: View {
    
    var player: Player
    
    var body: some View {
        VStack {
            BannerImageView(imageName: player.team.imageName, imageWidth: UIScreen.main.bounds.width, imageHeight: 300)
            BannerImageView(imageName: player.imageName, imageWidth: 200, imageHeight: 200)
                .clipShape(Circle())
                .background(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 8))
                .shadow(radius: 20)
                .offset(x: 0, y: -50)
                .padding(.bottom, -50)
            TextView(value:  player.name, fontSize: 45, fontWeight: .bold, textColor: .blue)
            
            HorizontalTextContainerView(key: "Age: ", value: String(player.age))
            HorizontalTextContainerView(key: "Weight: ", value: String(player.weight) + "lbs")
            HorizontalTextContainerView(key: "Height: ", value: String(player.height))

            Spacer()
            
            
        }.edgesIgnoringSafeArea(.top)
         }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetailView(player: players[0])
    }
}
