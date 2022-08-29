//
//  CustomNavBar.swift
//  FoodUI (iOS)
//
//  Created by Bryan Danquah🖤 on 15/07/2022.
//

import SwiftUI

struct CustomNavBar: View {
    @State var isHide = false
    var body: some View {
        GeometryReader{reader -> AnyView in
            let yAxis = reader.frame(in: .global).minY
            
            //logic if it goes below zero, hide navbar
            //if above zero show navbar
            if yAxis < 0 && !isHide{
                DispatchQueue.main.async {
                    withAnimation{isHide = true}
                }
            }
            if yAxis > 0 && isHide{
                DispatchQueue.main.async {
                    withAnimation{isHide = false}
                }
            }
            return AnyView(
                Text("")
                    .frame(width: 0, height: 0)
            )
        }
        .frame(width: 0, height: 0)
    }
}

struct CustomNavBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavBar()
    }
}
