//
//  PopularButton.swift
//  FoodUI
//
//  Created by Bryan Danquah🖤 on 07/07/2022.
//

import SwiftUI

struct PopularButton: View{
    var title: String
    var image: String
    var fav: String
    var backgroundColor: Color
    var body: some View{
        VStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .cornerRadius(300)
            
            VStack(alignment: .leading){
                Text(title)
                    .foregroundColor(.black)
                    .fontWeight(.medium)
                    .shadow(color: .black, radius: 0, x: 0, y: 0)
//                    .font(.title3)

                
                HStack{
                    Text("$25")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "plus")
                        .foregroundColor(.black)
                        .frame(width: 20, height: 20)
                        .aspectRatio(contentMode: .fit)
                        .background(.yellow)
                        .clipShape(Circle())
//                        .padding()
                }
            }
            
        }
        .padding()
        .frame(width: 150, height: 220)
        .background(backgroundColor)
        .cornerRadius(20)
//        .padding()
        
        
    }
}

