//
//  SignIn.swift
//  FoodUI
//
//  Created by Bryan Danquah🖤 on 05/07/2022.
//

import SwiftUI

struct SignIn: View {
    @State private var userName = ""
    @State private var password = ""
    @State private var rememberMe = false
    @State private var showingSignInScreen = false
    var body: some View {
        ScrollView{
            ZStack{
                LinearGradient(colors: [.white], startPoint: .topLeading, endPoint: .bottomTrailing)
         
                VStack(spacing: 30){
                        HStack {
                                Image(systemName: "person")
                                TextField("User Name", text: $userName)
                                
                            }
                        .padding()
                        .background(Color("lightGray"))
                        .cornerRadius(20)
                    
                            
                        HStack{
                            Image(systemName: "lock")
                            TextField("Password", text: $userName)
                            Button{
                                
                            }label: {
                                Image(systemName: "eye.slash")
                                    .foregroundColor(.gray)
                            }
                            
                        }
                        .padding()
                        .background(Color("lightGray"))
                        .cornerRadius(20)
    
                        HStack{
                            Toggle(isOn: $rememberMe) {
                                Text("Remember Me")
                                  .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            .toggleStyle(SwitchToggleStyle(tint: .yellow))
                            
                            .padding(.trailing, 45)
                            Text("[Forgot Passowrd?]( https://sapoilghana.com)")
                                .tint(Color.yellow)
                        }
                    NavigationLink(destination: MainScreenView(), isActive: $showingSignInScreen){
                        SignButton(title: "Sign In", textColor: .white, backgroundColor: .yellow)
                    }
//                    NavigationLink("Sign In", destination: MainScreenView())
//                        .frame(width: 280, height: 50)
//                        .background(.yellow)
//                        .foregroundColor(.white)
//                        .font(.system(size: 20, weight: .bold, design: .default))
//                        .cornerRadius(20)
//                    .padding(.top, 70)
                    
                    Text("OR")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.yellow)
                    
                    Text("Sign In With")
                    
                    HStack{
                        Button{
                            
                        }label: {
                            SocialButton(image: "fb", backgroundColor: Color("lightGray"))
                        }
                        Button{
                            
                        }label: {
                            SocialButton(image: "google" , backgroundColor: Color("lightGray"))
                        }
                    }
                    Text("Don't have an account?")
                    NavigationLink("Sign Up", destination: SignUp())
                        .tint(Color.yellow)
                    
                        .navigationTitle("Sign In")
//                        .navigationBarHidden(true)
            Spacer()
                    
                }
            }
                .background(.white)
                .padding()
                
                
                
            }//
            

            .padding(.top, 35)
            

        }
    }


struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}

