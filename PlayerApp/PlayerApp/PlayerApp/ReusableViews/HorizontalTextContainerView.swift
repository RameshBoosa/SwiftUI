//
//  HorizontalTextContainerView.swift
//  SwiftUI_WorkShop
//
//  Created by Ramesh Boosa on 18/07/21.
//

import SwiftUI

struct HorizontalTextContainerView: View {
    var key: String
    var value: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 10, content: {
            TextView(value: key, fontSize: 40, fontWeight: .heavy, textColor: .black)
            TextView(value: value, fontSize: 40, fontWeight: .light, textColor: .gray)
            Spacer()
        }).padding(.leading, 10)
        .minimumScaleFactor(0.5)
    }
}

struct HorizontalTextContainerView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalTextContainerView(key: "Age: ", value: "36")
    }
}
