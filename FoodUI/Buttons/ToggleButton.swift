//
//  ToggleButton.swift
//  FoodUI
//
//  Created by Bryan Danquah🖤 on 07/07/2022.
//

import SwiftUI

struct ToggleButton: View{
    var image: String
    var imageColor: Color
    var backgroundColor: Color
    var body: some View{
        VStack{
            Image(systemName: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .foregroundColor(imageColor)
        }
        .padding()
        .frame(width: 50, height: 50)
        .background(backgroundColor)
        .cornerRadius(10)
//        .padding()
        
        
    }
}
