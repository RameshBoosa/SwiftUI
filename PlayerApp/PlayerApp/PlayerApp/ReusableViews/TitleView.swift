//
//  TitleView.swift
//  PlayerApp
//
//  Created by Ramesh Boosa on 25/07/21.
//

import SwiftUI

struct TitleView: View {
    var title: String
    var body: some View {
        Text(title).font(.subheadline).foregroundColor(.gray)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "User name")
    }
}
