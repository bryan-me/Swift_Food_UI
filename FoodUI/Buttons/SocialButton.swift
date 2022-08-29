//
//  SocialButton.swift
//  FoodUI
//
//  Created by Bryan Danquah🖤 on 05/07/2022.
//

import SwiftUI

struct SocialButton: View{
    var image: String

    var backgroundColor: Color
    var body: some View{
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 70, height: 70)
            .frame(width: 170, height: 55)
            .background(backgroundColor)

            .cornerRadius(20)
    }
}

