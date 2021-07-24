//
//  TextView.swift
//  SwiftUI_WorkShop
//
//  Created by Ramesh Boosa on 18/07/21.
//

import SwiftUI

struct TextView: View {
    var value: String
    var fontSize: CGFloat
    var fontWeight: Font.Weight
    var textColor: Color
    
    var body: some View {
        Text(value)
            .font(.system(size: fontSize))
            .fontWeight(fontWeight)
            .foregroundColor(textColor)
            //.minimumScaleFactor(0.5)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(value: "Hello, SwiftUI", fontSize: 25, fontWeight: .heavy, textColor: .blue)
    }
}
