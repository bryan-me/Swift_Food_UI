//
//  CheckoutButton.swift
//  FoodUI
//
//  Created by Bryan Danquah🖤 on 06/07/2022.
//

import SwiftUI

struct CheckoutButton: View{
    var title: String
    var price: String
    var image: String
    var textColor: Color
    var priceColor: Color
    var backgroundColor: Color
    var body: some View{
        HStack{
            Text(title)
                .foregroundColor(textColor)
            Spacer()
            Text(price)
                .foregroundColor(priceColor)
            Image(systemName: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 10, height: 10)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(width: 320, height: 50)
        .background(backgroundColor)
        .font(.system(size: 20, weight: .medium, design: .default))
        .cornerRadius(10)
        .padding()
        
        
    }
}

