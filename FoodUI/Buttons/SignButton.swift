//
//  SignButton.swift
//  FoodUI
//
//  Created by Bryan Danquah🖤 on 05/07/2022.
//

import SwiftUI

struct SignButton: View{
    var title: String
    var textColor: Color
    var backgroundColor: Color
    var body: some View{
        Text(title)
            .frame(width: 350, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(20)
    }
}

