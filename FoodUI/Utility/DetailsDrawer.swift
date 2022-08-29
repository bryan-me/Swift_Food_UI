//
//  DetailsDrawer.swift
//  FoodUI (iOS)
//
//  Created by Bryan Danquah🖤 on 09/07/2022.
//

import SwiftUI

struct DetailsDrawer: View {
    @State var offset: CGFloat = 0
    @State var lastOffset: CGFloat = 0
    @GestureState var gestureOffset: CGFloat = 0
    var body: some View {
        //Bottom Drawer
        GeometryReader{proxy -> AnyView in
            
            let height = proxy.frame(in: .global).height
            return AnyView(
                ZStack{
                    BlurView(style: .systemThinMaterialDark)
                        .clipShape(CustomCorner(corners: [.topLeft,.topRight], radius: 30))
                    
                    VStack{
                        Capsule()
                            .fill(Color.black)
                            .frame(width: 60, height: 4)
                            .padding(.top)
                        
                        //Start
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
                    }
                    .padding(.horizontal)
                    .frame(maxHeight: .infinity, alignment: .top)
                }
                    .offset(y: height-150)
                    .offset(y: offset)
                    .gesture(DragGesture().updating($gestureOffset, body: {value, out, _ in
                        out = value.translation.height
                        onChange()
                    }).onEnded({value in
                        let maxHeight = height - 300
                        withAnimation{
                            if -offset > 200 && -offset < maxHeight / 2{
                                offset = -(maxHeight / 3)
                            }
                            else if -offset > maxHeight / 8 {
                                offset = -maxHeight
                            }
                            else{
                                offset = 0
                            }
                        }
                        
                        lastOffset = offset
                    }))
            )
            //Bottom Drawer End
        }
    }
    
    struct DetailsDrawer_Previews: PreviewProvider {
        static var previews: some View {
            DetailsDrawer()
        }
    }
    
        func onChange(){
            DispatchQueue.main.async {
                self.offset = gestureOffset + lastOffset
            }
        }
        func getBlurRadius() -> CGFloat{
            let progress = -offset / (UIScreen.main.bounds.height - 100)
    
            return progress * 30
        }
    }
    

