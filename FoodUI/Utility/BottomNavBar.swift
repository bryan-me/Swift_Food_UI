//
//  BottomNavBar.swift
//  FoodUI (iOS)
//
//  Created by Bryan Danquah🖤 on 11/07/2022.
//

import SwiftUI

struct BottomNavBar: View {
    var navBarIcon : String
//    var naverBarText : String
    var body: some View {
        VStack{
            Image(systemName: navBarIcon)
                .resizable()
                .foregroundColor(.black)
                .frame(width: 30, height: 30)
            
//            Text(naverBarText)
//                .font(.system(size: 20, weight: .medium, design: .rounded))
        }
    }
}

