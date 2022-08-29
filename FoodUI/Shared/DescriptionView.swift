//
//  DescriptionView.swift
//  FoodUI (iOS)
//
//  Created by Bryan Danquah🖤 on 12/07/2022.
//

import SwiftUI

struct DescriptionView: View {
    @State var favButton = Image(systemName: "heart")
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("lightGray")], startPoint: .topLeading, endPoint: .bottomTrailing)
            ZStack{
                Image("desBg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 1000, height: 600)
                    .padding(.bottom, 700)
                    .opacity(0.3)
            }
            VStack{
                HStack(spacing: 280){
                    Button{
                        
                    }label: {
                        ReturnButton(returnImage: "arrow.left", imageColor: .black, backgroundColor: .white.opacity(0.5))
                    }
                    Button{
//                        favButton = Image(systemName: "heart.fill")
                    }label: {
                        ReturnButton(returnImage: "heart.fill", imageColor: .black, backgroundColor: .white.opacity(0.5))
                    }
                }
                .padding(.top, 230)
                ScrollView(showsIndicators: false){
                    MainView()
                        .padding(.bottom, 300)
                }//SCROLLVIEW END
            }
           

            VStack{
                Button{
                    
                }label: {
                    AddCartButton(buttonText: "Add to Cart", textColor: .black, backgroundColor: .yellow)
                }
            }
            .padding(.horizontal, 20)
            .background(Color("lightGray"))
            .shadow(color: .white, radius: 10, x: 0, y: -20)
            .padding(.bottom, 220)
            .frame(maxHeight: .infinity,  alignment: .bottom)
        }
        
        .ignoresSafeArea()
        
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}

struct MainView: View{
    @State private var quantity = 1
    var body: some View{
        VStack{

            VStack{
                Text("Beef Burger")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                Text("450 gm")
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                Image("burger")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .aspectRatio(contentMode: .fit)
                //                            .padding(.bottom, 270)
                    .shadow(color: .black.opacity(0.3), radius: 30, x: 0, y: 20)
                
                
                
            }
            .padding(.top, 20)
            //                .frame(maxHeight: .infinity, alignment: .top)
            
            HStack(spacing: 150){
                Text("$25.00")
                    .font(.system(size: 35, weight: .bold, design: .default))
                HStack(spacing: 20){
                    Image(systemName: "minus")
                    
                    Text("\(quantity)")
                        .frame(width: 30, height: 30)
                        .background(.yellow)
                        .clipShape(Circle())
                    Image(systemName: "plus")
                }
                .frame(width: 120, height: 40)
                .background(.white)
                .cornerRadius(10)
            }
            .padding(.top, -30)
            
            
            HStack(spacing: 50){
                VStack{
                    Text("Rating")
                        .font(.system(size: 15, weight: .medium, design: .default))
                        .foregroundColor(.gray)
                    HStack{
                        Image(systemName: "star.fill")
                            .renderingMode(.original)
                        Text("4.7")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundColor(.black)
                    }
                }
                
                VStack{
                    Text("Energy")
                        .font(.system(size: 15, weight: .medium, design: .default))
                        .foregroundColor(.gray)
                    HStack{
                        Image(systemName: "flame")
                            .renderingMode(.original)
                            .foregroundColor(.orange)
                        Text("296 Cal")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundColor(.black)
                    }
                }
                
                VStack{
                    Text("Delivery In")
                        .font(.system(size: 15, weight: .medium, design: .default))
                        .foregroundColor(.gray)
                    HStack{
                        Image(systemName: "clock")
                            .renderingMode(.original)
                        Text("30 min")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundColor(.black)
                    }
                }
            }//HSTACK END
            
            .frame(width: 380, height: 100)
            .background(.yellow.opacity(0.1))
            .cornerRadius(15)
            .padding(.top, 15)
            
            
            VStack(alignment: .leading, spacing: 10){
                Text("Description")
                    .font(.system(size: 20, weight: .medium, design: .default))
                Text("As we all know, August has usually been our Women’s Convention and since the COVID Pandemic, we have not been able to hold any of these gathering for about two years now. So, the leadership has decided to organise a two-day seminar for all Local, Zonal and Pastors’ Spouses of all the Assemblies on the 26th and 27th of August 2022 at the headquarters, Mamfe.")
            }
            
            .frame(width: 360, height: 200)
            .padding(.top, 20)
            Spacer()
            
        }//VStack End
    }
}
