//
//  CartView.swift
//  FoodUI
//
//  Created by Bryan Danquah🖤 on 06/07/2022.
//

import SwiftUI

struct CartView: View {
    @State private var quantity1 = 1
    @State private var quantity2 = 1
    @State var searchText = ""
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("lightGray")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            ScrollView{
                VStack{
                    //                Text("My Cart")
                    //                    .font(.system(size: 25, weight: .bold, design: .default))
                    //                    .padding()
                    Text("Your Items")
                        .font(.system(size: 20, weight: .medium, design: .default))
                        .padding(.top, 20)
                        .padding(.trailing, 270)
                    
                    
                    //FOOD ORDER CARD
                    HStack{
                        Image("burger")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 130, height: 130)
                        
                        VStack(alignment: .leading, spacing: 10){
                            HStack(spacing: 120){
                                Text("Beef Burger")
                                    .font(.system(size: 15, weight: .bold, design: .default))
                               
                                Button{
                                    
                                }label: {
                                    Image(systemName: "trash")
                                        .foregroundColor(.red)
                                        .frame(width: 40, height: 40)

                                }

                                    
                            }
                            
                        
                            HStack{
                                Image(systemName: "star.fill")
                                    .renderingMode(.original)
                                Text("4.7")
                                    .foregroundColor(.gray)
                            }
                            HStack{
                                Text("$18")
                                    .font(.system(size: 15, weight: .bold, design: .default))
                                
                                Stepper("", value: $quantity1, in: 1...100)
                                Text("\(quantity1)")
                                
                                
                            }
                            .padding(.trailing, 20)
                        }
                    }
                    .background(.white)
                    .cornerRadius(10)
                    .padding()
                    
                    .shadow(color: .black.opacity(0.2), radius: 10, x: 10, y: 0)
                    
                    
                    //FOOD ORDER CARD
                    HStack{
                        Image("lemon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 130, height: 130)
                        
                        VStack(alignment: .leading, spacing: 10){
                            HStack(spacing:120){
                                Text("Lemon Juice")
                                    .font(.system(size: 15, weight: .bold, design: .default))
                                
                                Button{
                                    
                                }label: {
                                    Image(systemName: "trash")
                                        .foregroundColor(.red)
                                        .frame(width: 40, height: 40)
                                }

                                 
                            }
                            HStack{
                                Image(systemName: "star.fill")
                                    .renderingMode(.original)
                                Text("4.0")
                                    .foregroundColor(.gray)
                            }
                            HStack{
                                Text("$10")
                                    .font(.system(size: 15, weight: .bold, design: .default))
                                
                                Stepper("", value: $quantity2, in: 1...100)
                                
                                Text("\(quantity2)")
                                
                                
                                
                            }
                            .padding(.trailing, 20)
                        }
                    }
                    .background(.white)
                    .cornerRadius(10)
                    .padding(.top, -20)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 10, x: 10, y: 0)
                    
                    
                    //FOOD ORDER CARD
                    HStack{
                        Image("burger")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 130, height: 130)
                        
                        VStack(alignment: .leading, spacing: 10){
                            HStack(spacing: 120){
                                Text("Beef Burger")
                                    .font(.system(size: 15, weight: .bold, design: .default))
                                Button{
                                    
                                }label: {
                                    Image(systemName: "trash")
                                        .foregroundColor(.red)
                                        .frame(width: 40, height: 40)
                                }

                                
                            }
                            HStack{
                                Image(systemName: "star.fill")
                                    .renderingMode(.original)
                                Text("4.7")
                                    .foregroundColor(.gray)
                                
                            }
                            HStack{
                                Text("$18")
                                    .font(.system(size: 15, weight: .bold, design: .default))
                                
                                Stepper("", value: $quantity1, in: 1...100)
                                Text("\(quantity1)")
                                
                                
                            }
                            .padding(.trailing, 20)
                        }
                    }
                    .background(.white)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 10, x: 10, y: 0)
                    
                    
                    HStack{
                        Image("lemon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 130, height: 130)
                        
                        VStack(alignment: .leading, spacing: 10){
                            HStack(spacing:120){
                                Text("Lemon Juice")
                                    .font(.system(size: 15, weight: .bold, design: .default))
                                Button{
                                    
                                }label: {
                                    Image(systemName: "trash")
                                        .foregroundColor(.red)
                                        .frame(width: 40, height: 40)
                                }

                                    
                                   
                            }
                            HStack{
                                Image(systemName: "star.fill")
                                    .renderingMode(.original)
                                Text("4.0")
                                    .foregroundColor(.gray)
                            }
                            HStack{
                                Text("$10")
                                    .font(.system(size: 15, weight: .bold, design: .default))
                                
                                Stepper("", value: $quantity2, in: 1...100)
                                
                                Text("\(quantity2)")
                                
                                
                                
                            }
                            .padding(.trailing, 20)
                        }
                    }
                    .background(.white)
                    .cornerRadius(10)
                    .padding(.top, -20)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 10, x: 10, y: 0)
                    
                    HStack{
                        Image("lemon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 130, height: 130)
                        
                        VStack(alignment: .leading, spacing: 10){
                            HStack(spacing:120){
                                Text("Lemon Juice")
                                    .font(.system(size: 15, weight: .bold, design: .default))
                                Button{
                                    
                                }label: {
                                    Image(systemName: "trash")
                                        .foregroundColor(.red)
                                        .frame(width: 40, height: 40)
                                }

                                    
                                   
                            }
                            HStack{
                                Image(systemName: "star.fill")
                                    .renderingMode(.original)
                                Text("4.0")
                                    .foregroundColor(.gray)
                            }
                            HStack{
                                Text("$10")
                                    .font(.system(size: 15, weight: .bold, design: .default))
                                
                                Stepper("", value: $quantity2, in: 1...100)
                                
                                Text("\(quantity2)")
                                
                                
                                
                            }
                            .padding(.trailing, 20)
                        }
                    }
                    .background(.white)
                    .cornerRadius(10)
                    .padding(.top, -20)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 10, x: 10, y: 0)
                    
                    HStack{
                        Image("lemon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 130, height: 130)
                        
                        VStack(alignment: .leading, spacing: 10){
                            HStack(spacing:120){
                                Text("Lemon Juice")
                                    .font(.system(size: 15, weight: .bold, design: .default))
                                Button{
                                    
                                }label: {
                                    Image(systemName: "trash")
                                        .foregroundColor(.red)
                                        .frame(width: 40, height: 40)

                                }

                                    
                                   
                            }
                            HStack{
                                Image(systemName: "star.fill")
                                    .renderingMode(.original)
                                Text("4.0")
                                    .foregroundColor(.gray)
                            }
                            HStack{
                                Text("$10")
                                    .font(.system(size: 15, weight: .bold, design: .default))
                                
                                Stepper("", value: $quantity2, in: 1...100)
                                
                                Text("\(quantity2)")
                                
                                
                                
                            }
                            .padding(.trailing, 20)
                        }
                    }
                    .background(.white)
                    .cornerRadius(10)
                    .padding(.top, -20)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 10, x: 10, y: 0)

                    .navigationTitle("My Cart")
                    
                }
                .padding(.bottom, 200)
               
                
                
            }
            Spacer()
            .padding(.bottom, 60)
            .edgesIgnoringSafeArea(.bottom)
           
            
           
                //Bottom Drawer Start
                    DetailsDrawer()
            
                //Bottom Drawer End
            VStack{
                Button{
                    
                }label: {
                    CheckoutButton(title: "Checkout", price: "GHS 32.99", image: "greaterthan.circle.fill", textColor: .black, priceColor: .black, backgroundColor: .yellow)
                }
            }
            .padding(.horizontal)
            .frame(maxHeight: .infinity, alignment: .bottom)
           
            }//end
            
        }//
    }
    
    
    struct CartView_Previews: PreviewProvider {
        static var previews: some View {
            CartView()
        }
    }
    
    struct Line: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            return path
        }
    }
   

