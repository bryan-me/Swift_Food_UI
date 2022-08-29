//
//  MainScreenView.swift
//  FoodUI
//
//  Created by Bryan Danquah🖤 on 07/07/2022.
//

import SwiftUI

struct MainScreenView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    @State private var offset : CGFloat = 200
    @State private var isInitialOffset = false
    @State var searchApp = ""
    @State var isHide = false
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("lightGray")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            //hiding
            VStack{
                if !isHide{
                    VStack(alignment: .leading, spacing: 5){
                        HStack{
                            
                            Text("Hello Marina,")
                                .font(.system(size: 30, weight: .medium))
                            Spacer()
                            Image(systemName: "square.grid.2x2.fill")
                                .renderingMode(.original)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                        }
                        HStack{
                            Image(systemName: "mappin.and.ellipse")
                                .renderingMode(.original)
                                .frame(width: 30, height: 30)
                                .aspectRatio(contentMode: .fit)
                            Text("Nii Nortey Nyanchi")
                                .font(.system(size: 18, weight: .medium))
                                .foregroundColor(.gray)
                        }
                    }
                }
                HStack{
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .renderingMode(.original)
                        TextField("Search", text: $searchApp)
                        
                    }
                    .padding()
                    .background(.white)
                    .frame(width: 320, height: 50)
                    .cornerRadius(10)
                    
                    Button{
                        
                    }label: {
                        ToggleButton(image: "switch.2", imageColor: .white, backgroundColor: .black)
                    }
                }
                ScrollView(showsIndicators: false){
                    VStack{
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
                        VStack(spacing: 15){
                            Home()
                                .padding(.bottom, 35)
                        }
                    }
                }//ScrollView
              
            }//VStack
            .padding(.horizontal)
          
            //BOTTOM NAVBAR GOES HERE
            NavBar()
           
//            .navigationTitle("Hello")
            .navigationBarTitleDisplayMode(.inline)
            
            
            
            
        }//ZStack
        
        
    }
    
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}

struct Home: View {
  
    @State private var showingMainScreen = false
    var body: some View{
        VStack{
        
            
            VStack{
                HStack{
                    VStack{
                        Text("Spicy Cheese")
                            .font(.system(size: 20, weight: .bold, design: .serif))
                            .foregroundColor(.yellow)
                        Text("Burgers")
                            .font(.system(size: 40, weight: .bold, design: .serif))
                            .foregroundColor(.white)
                        
                        Text("As we all know, August has usually been our Women’s Convention and since the COVID Pandemic, we have not been able to hold any of these gathering for about two years now. So, the leadership has decided to organise a two-day seminar for all Local, Zonal and Pastors’ Spouses of all the Assemblies on the 26th and 27th of August 2022 at the headquarters, Mamfe.")
                            .font(.system(size: 10, weight: .bold, design: .serif))
                            .foregroundColor(.white)
                            .frame(width: 180, height: 80)
                            .padding(.leading)
                        
                    }
//                    .padding()
                    Image("burger")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .aspectRatio(contentMode: .fit)
                    
                }
                
                .frame(width: 400, height: 200)
                .background(LinearGradient(colors: [.red, .yellow], startPoint: .leading, endPoint: .trailing))
                //                    .cornerRadius(50)
            }
            .cornerRadius(30)
            .padding(.top, 20)
            .padding(.bottom, 20)
            .cornerRadius(30)
            
            VStack{
                HStack{
                    Text("Categories")
                        .font(.title2)
                        .fontWeight(.medium)
                    Spacer()
                    Text("View All")
                        .foregroundColor(.yellow)
                        .fontWeight(.medium)
                    
                    NavigationLink(destination: CartView(), isActive: $showingMainScreen){
                      Image(systemName: "greaterthan")
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                            .background(.yellow)
                            .cornerRadius(5)
                    }
                    
                }
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 20){
                        
                        Button{
                            
                        }label: {
                            CategoryButton(title: "Burger", image: "Unknown",  backgroundColor: .white)

                        }
                        
                        
                        Button{
                            
                        }label: {
                            CategoryButton(title: "Pizza", image: "icons8-pizza-96",  backgroundColor: .white)
                        }
                        
                        Button{
                            
                        }label: {
                            CategoryButton(title: "Salads", image: "icons8-green-salad-48", backgroundColor: .white)
                        }
                        
                        Button{
                            
                        }label: {
                            CategoryButton(title: "Pasta", image: "Unknown-2",  backgroundColor: .white)
                        }
                        
                        Button{
                            
                        }label: {
                            CategoryButton(title: "Sushi", image: "Unknown-1",  backgroundColor: .white)
                        }
                    }
                    .padding()
                }
                VStack{
                    HStack{
                        Text("Popular Now")
                            .font(.title2)
                            .fontWeight(.medium)
                        Spacer()
                        Text("View All")
                            .foregroundColor(.yellow)
                            .fontWeight(.medium)
                        NavigationLink(destination: CartView(), isActive: $showingMainScreen){
                          Image(systemName: "greaterthan")
                                .foregroundColor(.white)
                                .frame(width: 25, height: 25)
                                .background(.yellow)
                                .cornerRadius(5)
                        }
                    }
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 15){
                            NavigationLink(destination: DescriptionView(), isActive: $showingMainScreen){
                                PopularButton(title: "Beef Burger", image: "burger", fav: "heart.circle.fill", backgroundColor: .white)
                            }
                            
                                PopularButton(title: "Burger King", image: "burger", fav: "heart.circle.fill", backgroundColor: .white)
                            
                            
                            Button{
                                
                            }label: {
                                PopularButton(title: "Beef Burger", image: "burger", fav: "heart.circle.fill", backgroundColor: .white)
                            }
                            
                            Button{
                                
                            }label: {
                                PopularButton(title: "Beef Burger", image: "burger", fav: "heart.circle.fill", backgroundColor: .white)
                            }
                            
                            Button{
                                
                            }label: {
                                PopularButton(title: "Beef Burger", image: "burger", fav: "heart.circle.fill", backgroundColor: .white)
                            }
                            HStack{
                                NavigationLink("See all", destination: SignUp())
                                    .tint(Color.yellow)
                                Image(systemName: "greaterthan")
                                    .resizable()
                                    .frame(width: 5, height: 10)
                                    .foregroundColor(.yellow)
                            }
                        }
                    }
                    
                    //FOOD TILE START
                    VStack{
                        NavigationLink(destination: DescriptionView(), isActive: $showingMainScreen){
                            FoodTile(title: "Pizza Hut", bgImage: "pexels-narda-yescas-1566837", category: "Pizza", rating: 100, ratingImage: "hand.thumbsup.fill", deliverImage: "bicycle", deliveryPrice: "FREE")
                        }
    
                        Button{
                            
                        }label: {
                            FoodTile(title: "Torsika Resturant & Pub", bgImage: "pexels-robin-stickel-70497", category: "Pizza", rating: 100, ratingImage: "hand.thumbsup.fill", deliverImage: "bicycle", deliveryPrice: "FREE")
                        }
                        
                        Button{
                            
                        }label: {
                            FoodTile(title: "Esther's Kitchen", bgImage: "pexels-pixabay-60616", category: "Pizza", rating: 100, ratingImage: "hand.thumbsup.fill", deliverImage: "bicycle", deliveryPrice: "FREE")
                        }
                        
                        Button{
                            
                        }label: {
                            FoodTile(title: "Gazebo View Resturant", bgImage: "pexels-james-ampong-quilario-5618848", category: "Pizza", rating: 100, ratingImage: "hand.thumbsup.fill", deliverImage: "bicycle", deliveryPrice: "FREE")
                        }
                        
                        Button{
                            
                        }label: {
                            FoodTile(title: "KFC", bgImage: "pexels-jonathan-borba-2983101", category: "Pizza", rating: 100, ratingImage: "hand.thumbsup.fill", deliverImage: "bicycle", deliveryPrice: "FREE")
                        }
                        .padding(.bottom, 40)
                    }//FOOD TILE END
                    .padding(.top, 30)
                }
            }
            
            
            Spacer()
            
            
        }
//        .padding()

    }
}
struct NavBar: View{
    @State private var showingMainScreen = false
    var body: some View{

        ZStack {
            BottomRectangle()
                .frame(width: .infinity, height: 70)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .ignoresSafeArea()
            ZStack{
                NavigationLink(destination: CartView(), isActive: $showingMainScreen){
                  BottomNavBar(navBarIcon: "cart.fill")
                }
               
            }
            .frame(width: 70, height: 70)
            .background(.yellow)
            .clipShape(Circle())
            .frame(width: 90, height: 90)
            .background(.yellow.opacity(0.09))
            .clipShape(Circle())
            .padding(.horizontal)
            .frame(maxHeight: .infinity, alignment: .bottom)
            
            
          
        }
        
      
    }
}
struct BottomRectangle: View{
    var body: some View{
        VStack{
            Rectangle()
                .fill(Color.white)
                .frame(maxWidth: 500, maxHeight: 80)
        }
    }
}
