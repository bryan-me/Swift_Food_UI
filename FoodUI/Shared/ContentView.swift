//
//  ContentView.swift
//  Shared
//
//  Created by Bryan Danquah🖤 on 05/07/2022.
//

import SwiftUI



struct ContentView: View {
    @State private var showingGetStartedScreen = false
    var body: some View {
        NavigationView{
            ZStack{
                
                LinearGradient(colors: [.yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                
                VStack{
                    Image("bgImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 320, height: 320)
                        .padding(.bottom, 350)
                }
                VStack{
                    Spacer()
                    
                    ScrollView(.horizontal){
                        HStack{
                            VStack( spacing: 25){
                                
                                Text("Delicious And Tasty Dishes")
                                    .font(.system(size: 35,weight: .bold, design: .default))
                                    .multilineTextAlignment(.center)
                                
                                Text("All the best resturants with their top menu waiting for you. They can't wait for your order.")
                                    .font(.system(size: 20, weight: .light))
                                    .padding()
                                    .multilineTextAlignment(.center)
                                
                                NavigationLink("", destination: SignIn())
                                    .frame(width: 280, height: 50)
                                    .background(.white)
                                    .foregroundColor(.white)
                                    .font(.system(size: 20, weight: .bold, design: .default))
                                    .cornerRadius(20)
                            }
                            .frame(width: 350, height: 350)
                            .padding(.bottom, 35)
                            
                            //SECOND
//                            VStack( spacing: 25){
//
//                                Text("Fast delivery at your home")
//                                    .font(.system(size: 35,weight: .bold, design: .default))
//                                    .multilineTextAlignment(.center)
//
//                                Text("All the best resturants with their top menu waiting for you. They can't wait for your order.")
//                                    .font(.system(size: 20, weight: .light))
//                                    .padding()
//                                    .multilineTextAlignment(.center)
//
//                                NavigationLink("", destination: SignIn())
//                                    .frame(width: 280, height: 50)
//                                    .background(.white)
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 20, weight: .bold, design: .default))
//                                    .cornerRadius(20)
//                            }
//                            .frame(width: 350, height: 350)
//                            .padding(.bottom, 35)
//
                            //THIRD
                            VStack( spacing: 25){
                                
                                Text("Fast delivery at your home")
                                    .font(.system(size: 35,weight: .bold, design: .default))
                                    .multilineTextAlignment(.center)
                                
                                Text("All the best resturants with their top menu waiting for you. They can't wait for your order.")
                                    .font(.system(size: 20, weight: .light))
                                    .padding()
                                    .multilineTextAlignment(.center)
                                

                                NavigationLink(destination: SignIn(), isActive: $showingGetStartedScreen){
                                    StartButton(title: "Get Started", textColor: .white, backgroundColor: .black)
                                }

                            }
                            .frame(width: 350, height: 350)
                            .padding(.bottom, 35)
                        }
                    }
                }
                .frame(width: 350, height: 350)
                .background(.white)
                .cornerRadius(30)
                .shadow(color: .black.opacity(0.4), radius: 30, x: 10, y: 20)
                .padding(.top, 300)
            }
            
        }
        .navigationBarHidden(true)
        .preferredColorScheme(.light)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
