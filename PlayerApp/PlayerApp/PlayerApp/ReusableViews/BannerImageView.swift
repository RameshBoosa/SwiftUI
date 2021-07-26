//
//  BannerImageView.swift
//  SwiftUI_WorkShop
//
//  Created by Ramesh Boosa on 18/07/21.
//

import SwiftUI

struct BannerImageView: View {
    var imageName: String
    var imageWidth: CGFloat? = UIScreen.main.bounds.width
    var imageHeight: CGFloat
    
    var body: some View {
        Image(imageName).resizable()
            .frame(width: imageWidth, height: imageHeight)
            .scaledToFit()
    }
}

struct BannerImageView_Previews: PreviewProvider {
    static var previews: some View {
        BannerImageView(imageName: "tr", imageWidth: UIScreen.main.bounds.width, imageHeight: 300)
    }
}
