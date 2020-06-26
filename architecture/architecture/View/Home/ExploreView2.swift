//
//  ExploreView2.swift
//  architecture
//
//  Created by Cameron Joyner on 6/25/20.
//  Copyright © 2020 com.example. All rights reserved.
//

import SwiftUI

struct ExploreView2: View {
    var body: some View {
        
        VStack {
            HStack {
                                      
                Text("Explore")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(.leading, 8)
                          
                Spacer()
                
                Button(action: {
                    
                    print("Information")
                    
                }) {
                    
                  Text("view all")
                  .foregroundColor(.black)
                  .padding(.leading)
                    
                }
                .padding(.trailing)
                .accentColor(Color.primary)
                
            }.padding(.top, 10)
            
            Spacer()
            
            HStack {
                
                VStack {
                    ZStack {
                                            
                        RoundedRectangle(cornerRadius: 55)
                        .foregroundColor(Color.blue)
                        .frame(width: 70, height: 70)
                        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                        
                        Image(systemName: "sun.max.fill")
                        .resizable()
                        .foregroundColor(Color.white)
                        .scaledToFit()
                        .frame(height: 35)
                        
                    }.padding(.top, 5)
                    
                    Text("Finland")
                
                }.padding(10)
                
                VStack {
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 55)
                        .foregroundColor(Color.blue)
                        .frame(width: 70, height: 70)
                        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                        
                        Image(systemName: "cloud.snow.fill")
                        .resizable()
                        .foregroundColor(Color.white)
                        .scaledToFit()
                        .frame(height: 35)
                        
                    }.padding(.top, 5)
                    
                    Text("Australia")
                
                }.padding(10)
                
                VStack {
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 55)
                        .foregroundColor(Color.blue)
                        .frame(width: 70, height: 70)
                        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                        
                        Image(systemName: "snow")
                        .resizable()
                        .foregroundColor(Color.white)
                        .scaledToFit()
                        .frame(height: 35)
                        
                    }.padding(.top, 5)
                    
                    Text("Germany")
                
                }.padding(10)
                
                VStack {
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 55)
                        .foregroundColor(Color.blue)
                        .frame(width: 70, height: 70)
                        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                        
                        Image(systemName: "sun.haze.fill")
                        .resizable()
                        .foregroundColor(Color.white)
                        .scaledToFit()
                        .frame(height: 35)
                        
                    }.padding(.top, 5)
                    
                    Text("New York")
                
                }.padding(10)
                
            }//.frame(width: 375, height: 175)
            
            Spacer()
                    
        }
    }
}

struct ExploreView2_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView2()
        .previewLayout(.fixed(width: 375, height: 175))
    }
}
