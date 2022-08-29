//
//  AddCartButton.swift
//  FoodUI (iOS)
//
//  Created by Bryan Danquah🖤 on 13/07/2022.
//

import SwiftUI

struct AddCartButton: View {
    var buttonText: String
    var textColor: Color
    var backgroundColor: Color
    var body: some View {
        Text(buttonText)
            .font(.system(size: 25, weight: .bold, design: .default))
            .foregroundColor(textColor)
            .frame(width: 380, height: 60)
            .background(backgroundColor)
            .cornerRadius(20)
            
    }
}

