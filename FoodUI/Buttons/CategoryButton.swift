//
//  CategoryButton.swift
//  FoodUI
//
//  Created by Bryan Danquah🖤 on 07/07/2022.
//

import SwiftUI

struct CategoryButton: View{
    var title: String
    var image: String
    var backgroundColor: Color
    var body: some View{
        VStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 45, height: 45)
                .padding()
                .background(.yellow.opacity(0.1))
                .clipShape(Circle())
            
            
            Text(title)
                .foregroundColor(.black)
        }
        .padding()
        .frame(width: 90, height: 150)
        .background(backgroundColor)
        .cornerRadius(100)
//        .padding()
        
        
    }
}

