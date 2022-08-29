//
//  UserProfileView.swift
//  FoodUI (iOS)
//
//  Created by Bryan Danquah🖤 on 14/07/2022.
//

import SwiftUI

struct UserProfileView: View {
    @State var backgroundColor = Color.blue
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(colors: [Color("lightGray")], startPoint: .top, endPoint: .bottom)
                ZStack{
                    LinearGradient(colors: [backgroundColor], startPoint: .top, endPoint: .bottom)
                }
                .frame(width: 450, height: 190)
                .frame( maxHeight: .infinity, alignment: .top)
                VStack{
                   HStack{
                        Button{

                        }label: {
                            ReturnButton(returnImage: "arrow.left", imageColor: .white, backgroundColor: .black.opacity(0.4))
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                       Text("My Profile")
                           .foregroundColor(.white)
                           .font(.system(size: 27, weight: .bold))
                           .frame(maxWidth: .infinity, alignment: .center)
//                        Button{
//                            
//                        }label: {
//                            ReturnButton(returnImage: "multiply", imageColor: .white, backgroundColor: .white)
//                        }
//                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }//HStack
                   .padding(.horizontal, 25)
                    
                    HStack{
                        Image(systemName: "person")
                            .renderingMode(.original)
                            .resizable()
                            .padding()
                            .frame(width: 100, height: 100)
                            .background(.gray)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                    }
                    .frame(width: 115, height: 115)
                    .background(Color("lightGray"))
                    .clipShape(Circle())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .padding(.leading, 25)
                    
                    VStack{
                        Text("Aroshi Sen")
                            .font(.system(size: 30, weight: .bold))
                            .padding(.top, -10)
                        Text("Edit profile")
                            .font(.system(size: 20, weight: .medium))
                            .padding(.leading, -55)
                    }//VStack
                    .padding(.horizontal, 40)
                    .frame(maxWidth: .infinity, alignment: .leading)
                  
                    Button{
                        backgroundColor = Color.yellow
                    }label: {
                        AddCartButton(buttonText: "Test", textColor: .black, backgroundColor: .yellow)
                    }
                    Spacer()
                       
                }//VStack
                .padding(.top, 50)
             
            }//ZStack
            .ignoresSafeArea()
        }//Navigation View
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
