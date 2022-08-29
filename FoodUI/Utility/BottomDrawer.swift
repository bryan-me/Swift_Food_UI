//
//  BottomDrawer.swift
//  FoodUI (iOS)
//
//  Created by Bryan Danquah🖤 on 08/07/2022.
//

import SwiftUI

struct BottomDrawer: View {
    @State private var offset : CGFloat = 200
    @State private var isInitialOffset = false
    var body: some View {
    
        ZStack{
//            HomeView()
            
            GeometryReader{ proxy in
                ZStack{
                    //Blur
                    
                    BlurView(style: .systemThinMaterialLight)
                        .cornerRadius(20)
                   
                    DrawerView()
                }
                
            }
            .offset(y: offset)
            .gesture(
                DragGesture()
                    .onChanged{value in
                        let startlocation = value.startLocation
                        offset = startlocation.y + value.translation.height
                    }
            )
            
            .onAppear{
                if !isInitialOffset{
                    offset = UIScreen.main.bounds.height - 150
                    isInitialOffset = true
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        DrawerView()
    }
}
//Blurred View
struct BlurView: UIViewRepresentable {
    let style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(
            effect: UIBlurEffect(style: style)
        )
        return view
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        //do nothing
    }
}
//Home View
struct HomeView: View {
    var body: some View{
            
            //For Getting Frame For Image
            GeometryReader{ proxy in
                let frame = proxy.frame(in: .global)
                
                Image("bg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: frame.width, height: frame.height)
            }
        
    }
}

struct DrawerView: View {
    @State var text: String = ""
    var body: some View{
        VStack{
           Capsule()
                .frame(width: 100, height: 7)
                .foregroundColor(.white)
                .padding(7)
            
            Text("Promocode:")
                .font(.system(size: 20, weight: .bold))
                .padding(.trailing, 240)
                .padding(.top, 20)
            HStack{
                HStack{
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(.yellow)
                    
                    Text("9AkY4dh6")
                        .foregroundColor(.gray)
                        .padding(.trailing, 100)
                }
                
                    HStack{
                        Image(systemName: "checkmark")
                            .foregroundColor(.black)
                            .padding(.leading, 10)
                    
                        VStack(alignment: .trailing){
                            HStack{
                                Text("Applied")
                                    .foregroundColor(.black)
                                    .padding(.trailing, 10)
                                    .padding(.all, 10)
                            }
                        }
                    }
                
                .background(.yellow)
                .cornerRadius(10)
                
                
            }
            .foregroundColor(.yellow)
            .frame(width: 350, height: 50)
            .cornerRadius(10)
            
            //Start
            VStack(spacing: 15){
                HStack(spacing: 240){
                    Text("Sub total")
                        .foregroundColor(.gray)
                        .font(.system(size: 15, weight: .medium, design: .default))
                    
                    Text("$28.00")
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .bold, design: .default))
                }
                HStack(spacing: 240){
                    Text("Sub total")
                        .foregroundColor(.gray)
                        .font(.system(size: 15, weight: .medium, design: .default))
                    
                    Text("$2.99")
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .bold, design: .default))
                }
                HStack(spacing: 240){
                    Text("Sub total")
                        .foregroundColor(.gray)
                        .font(.system(size: 15, weight: .medium, design: .default))
                    
                    Text("-$4.99")
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .bold, design: .default))
                }
    //                        Line()
    //                          .stroke(style: StrokeStyle(lineWidth: 10, dash: [5]))
    //                          .frame(height: 1)
                
                HStack(spacing: 240){
                    Text("Total")
                        .font(.system(size: 20, weight: .bold))
                    Text("$25.99")
                        .font(.system(size: 20, weight: .bold))
                }
                .padding(.bottom, 80)
            }
            .padding()
            //End
            Spacer()
            }
                
            Spacer()
    }
}


