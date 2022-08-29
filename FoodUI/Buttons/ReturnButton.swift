//
//  ReturnButton.swift
//  FoodUI (iOS)
//
//  Created by Bryan Danquah🖤 on 12/07/2022.
//

import SwiftUI

struct ReturnButton: View {
    var returnImage: String
    var imageColor: Color
    var backgroundColor: Color
    var body: some View {
        Image(returnImage)
            .renderingMode(.original)
            .resizable()
            .padding()
            .frame(width: 50, height: 50)
            .background(backgroundColor.opacity(0.4))
            .clipShape(Circle())
            .foregroundColor(imageColor)
    }
}

