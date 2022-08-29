//
//  SignUp.swift
//  FoodUI
//
//  Created by Bryan Danquah🖤 on 05/07/2022.
//

import SwiftUI

struct SignUp: View {
    @State private var userName = ""
    @State private var password = ""
    @State private var rememberMe = false
    var body: some View {
        ZStack{
            LinearGradient(colors: [.white], startPoint: .topLeading, endPoint: .bottomTrailing)
            ScrollView(showsIndicators: false){
                VStack(spacing: 30){
                    HStack {
                        Image(systemName: "person")
                        TextField("User Name", text: $userName)
                        
                    }
                    .padding()
                    .background(Color("lightGray"))
                    .cornerRadius(20)
                    
                    HStack {
                        Image(systemName: "envelope")
                        TextField("Email Or Phone", text: $userName)
                        
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
                                .foregroundColor(.black)
                        }
                        
                    }
                    .padding()
                    .background(Color("lightGray"))
                    .cornerRadius(20)
                    
                    //                    Text("[Already Have An Account?]( https://sapoilghana.com)")
                    //                        .tint(Color.yellow)
                    Button{
                        
                    }label:{
                        SignButton(title: "Submit", textColor: .white, backgroundColor: .yellow)
                    }
                    .padding(.top, 10)
                    
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
                    Text("Already have an accont? [Sign In]( https://sapoilghana.com)")
                        .tint(Color.yellow)
                    
                }
            }
            .background(.white)
            .padding()
            
        }
        .padding(.top)
        .navigationTitle("Sign Up")
        
        
        
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}

