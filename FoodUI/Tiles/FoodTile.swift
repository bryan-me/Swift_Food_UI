//
//  FoodTile.swift
//  FoodUI (iOS)
//
//  Created by Bryan Danquah🖤 on 10/07/2022.
//

import SwiftUI

struct FoodTile: View{
    var title: String
    var bgImage: String
    var category: String
    var rating: Int
    var ratingImage: String
    var deliverImage: String
    var deliveryPrice: String
    
    var body: some View{
        VStack{
            ZStack{
                ZStack{
                    Image(bgImage)
                        .resizable()
                        .frame(width: 400, height: 220)
                        .aspectRatio(contentMode: .fill)
                        
                    VStack{
                        Text(title)
                            .font(.system(size: 35, weight: .bold, design: .default))
                            .frame(width: 380, height: 180)
                            .foregroundColor(.white)
                        
                        Text(category)
    //                        .padding(.all,5)
                            .font(.system(size: 20, weight: .medium, design: .rounded))
                            .foregroundColor(.white)
                            .frame(width: 75, height: 37)
                            .background(.black.opacity(0.5))
                            .cornerRadius(20)
                            .padding(.top, -45)
                    }

                }
            }
            .padding()
            .frame(width: 400, height: 220)
            .background(.yellow)
            .cornerRadius(20)
            
            
            HStack{
                Image(systemName: ratingImage)
                    .resizable()
                    .renderingMode(.original)
                    .foregroundColor(.black)
                    .frame(width: 20, height: 20)
                
                Text("\(rating)%")
                    .font(.system(size: 15))
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: deliverImage)
                    .resizable()
                    .renderingMode(.original)
                    .foregroundColor(.black)
                    .frame(width: 25, height: 25)
                    .aspectRatio(contentMode: .fit)
          
                Text(deliveryPrice)
                    .foregroundColor(.black)
                    .frame(width: 70, height: 35)
                    .background(.yellow)
                    .cornerRadius(30)
            }
            .padding()
        }
        
    }
}
