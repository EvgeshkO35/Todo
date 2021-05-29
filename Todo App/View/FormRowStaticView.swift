//
//  FormRowStaticView.swift
//  Todo App
//
//  Created by Evgenii Lysenko on 5/28/21.
//

import SwiftUI

struct FormRowStaticView: View {
    // MARK: - PROPERTIES
    var icon: String
    var firstText: String
    var secondText: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(Color.gray)
                Image(systemName: icon)
                    .foregroundColor(Color.white)
            } //: ZSTACK
            .frame(width: 36, height: 36, alignment: .center)
            
            Text(firstText)
                .foregroundColor(Color.gray)
            Spacer()
            Text(secondText)
        } //: HSTACK
    }
}

    // MARK: - PREVIEW

struct FormRowStaticView_Previews: PreviewProvider {
    static var previews: some View {
        FormRowStaticView(icon: "gear", firstText: "Application", secondText: "Todo")
            .previewDevice("iPhone 11 Pro")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
