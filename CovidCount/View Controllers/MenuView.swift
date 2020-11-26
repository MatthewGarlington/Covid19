//
//  ContentView.swift
//  Custom Menu
//
//  Created by Kavsoft on 06/06/20.
//  Copyright © 2020 Kavsoft. All rights reserved.
//

import SwiftUI

struct MenuView: View {
   
    var body: some View {
        
        Home()
    }
}

struct MenuView_Previews: PreviewProvider {
  
    static var previews: some View {
        MenuView()
    }
}

struct Home : View {
    
    @State var index = 0
    @State var show = false
  
    
   
    
    var body: some View{
        
        ZStack{
            
            // Menu...
            
            HStack{
                
                VStack(alignment: .leading, spacing: 12) {
                
                    
                    Text("Hey")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    
                    Text("Matthew")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Button(action: {
                        
                        self.index = 0
                        
                        // animating Views...
                        
                        // Each Time Tab Is Clicked Menu Will be Closed...
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image("catalouge")
                                .foregroundColor(self.index == 0 ? Color("Color1") : Color.white)

                            
                            Text("Main")
                            .foregroundColor(self.index == 0 ? Color("Color1") : Color.white)
                            
                       
                            
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 0 ? Color("Color1").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                        
                    }
                    .padding(.top,25)
                    
                    Button(action: {
                        
                        self.index = 1
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image("cart")
                                .foregroundColor(self.index == 1 ? Color("Color1") : Color.white)

                            
                            Text("Country Data")
                            .foregroundColor(self.index == 1 ? Color("Color1") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 1 ? Color("Color1").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        
                        self.index = 2
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image("fav")
                                .foregroundColor(self.index == 2 ? Color("Color1") : Color.white)

                            
                            Text("State Data")
                            .foregroundColor(self.index == 2 ? Color("Color1") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 2 ? Color("Color1").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        
                        self.index = 3
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image("orders")
                                .foregroundColor(self.index == 3 ? Color("Color1") : Color.white)

                            
                            Text("Map")
                            .foregroundColor(self.index == 3 ? Color("Color1") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 3 ? Color("Color1").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Divider()
                        .frame(width: 150, height: 1)
                        .background(Color.white)
                        .padding(.vertical,30)
                    
                    Button(action: {

                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image("out")
                                .foregroundColor(Color.white)
                                

                            
                            Text("Sign Out")
                            .foregroundColor(Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                    }
                    
                    Spacer(minLength: 0)
                }
                .padding(.top,25)
                .padding(.horizontal,20)
                
                
                Spacer(minLength: 0)
            }
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            
            
            // MainView...
            
            VStack(spacing: 0){
                
                HStack(spacing: 15){
                    
                    Button(action: {
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        // close Button...
                        
                        Image(systemName: self.show ? "xmark" : "line.horizontal.3")
                            .resizable()
                            .frame(width: self.show ? 18 : 22, height: 18)
                            .foregroundColor(Color(.white).opacity(0.2))
                            .padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .background(Color("cardBackgroundColor"))                    }
                    
                    // Changing Name Based On Index...
                    
                    Text(self.index == 0 ? "Main" : (self.index == 1 ? "Country" : (self.index == 2 ? "U.S" : "U.S")))
                        .font(.title)
                        .foregroundColor(Color(.white))
                        .padding(.leading, 10)
                    
                    Spacer(minLength: 0)
                }
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                
                GeometryReader{_ in
                    
                    VStack{
                        
                        // Changing Views Based On Index...
                        
                        if self.index == 0{
                            
                            MainPage()
                        }
                        else if self.index == 1{
                            
                            Cart()
                        }
                        else if self.index == 2{
                            
                            Favourites()
                        }
                        else{
                            
                            Orders()
                        }
                    }
                }
            }
            .background(Color("cardBackgroundColor"))
            //Applying Corner Radius...
            .cornerRadius(self.show ? 30 : 0)
            // Shrinking And Moving View Right Side When Menu Button Is Clicked...
            .scaleEffect(self.show ? 0.9 : 1)
            .offset(x: self.show ? UIScreen.main.bounds.width / 2 : 0, y: self.show ? 15 : 0)
            // Rotating Slighlty...
            .rotationEffect(.init(degrees: self.show ? -5 : 0))
            
        }
        .background(Color(.darkGray).opacity(20).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}

// Mainpage View...

struct MainPage : View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View{
        
        VStack{
            
            ZStack(alignment: .bottomTrailing) {
                
                VStack(spacing: 5){
                    
                    Image("Covid")
                        .resizable()
                        .accentColor(.white)
                        .shadow(radius: 15)
                        .cornerRadius(20)
                        
                        .frame(width: 300, height: 150, alignment: .center)
                    
                    Text("Covid 19 Data")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color1").opacity(0.2))
                        .padding(.top, 30)
                       
                    
                    Text("Cornovirus Country SnapShot")
                        .foregroundColor(.white)
                    
                    TotalDataView(totalData: covidFetch.totalData)
                        .padding(.top, 10)
                    
                        
                    
                    Text("Cornovirus State SnapShot")
                        .foregroundColor(.white)
                        
                    
                    TotalStateView(totalStateData: covidFetch.totalStateData)
                        .padding(.top, 10)
                }
                .padding()
                .background(Color(.clear).opacity(50))
                .cornerRadius(30)
                
                // Cart Button...
                
                Button(action: {
                    
                    
                }) {
//
//
                        }

                        Spacer(minLength: 0)
                    }


                }
                .padding()
            }
      }
    


// All Other Views...

struct Cart : View {
    
    var body: some View{
        
        VStack{
            
            RecentView()
                .background(Color("cardBackgroundColor"))
                
        }
    }
}

struct Orders : View {
    
    
    var body: some View{
        
        VStack{
            
            MapContainerView()
            

            
        }
    }
}

struct Favourites : View {
    
    var body: some View{
        
        VStack{
            
            StateDataView()
                .background(Color("cardBackgroundColor"))
           
        }
    }
}
