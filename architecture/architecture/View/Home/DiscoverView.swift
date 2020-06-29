//
//  ExploreView2.swift
//  architecture
//
//  Created by Cameron Joyner on 6/25/20.
//  Copyright © 2020 com.example. All rights reserved.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        
        VStack {
            HStack {
                                      
                Text("Discover")
                    .fontWeight(.bold)
                    .font(.system(size: 22))
                    .foregroundColor(.black)
                    .padding(.leading, 5)
                          
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
                
            }
            .frame(width: 400, height: 15)//.padding(.top, 10)
            .padding(.top, 20)
            
            Spacer()
            
            HStack {
                
                VStack {
                    ZStack {
                                            
                        RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.blue)
                        .frame(width: 90, height: 110)
                        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                        
                        Image("madrid")
                        .resizable()
                        .foregroundColor(Color.white)
                        .scaledToFit()
                        .frame(height: 70)
                        .padding(.bottom, 35)
                        
                        Text("Madrid")
                        .padding(.top, 48)
                        .font(.system(size: 13))
                        .foregroundColor(Color.white)
                        
                        RoundedRectangle(cornerRadius:9)
                           .foregroundColor(Color.pink)
                           .frame(width: 30, height: 30)
                           .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                            .padding(.top, 100)
                        
                        Image(systemName: "arrow.right.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 15)
                        .foregroundColor(Color.white)
                        .padding(.top, 100)
                        
                    }
                    
                
                }
                .padding(.leading, 2)
                .padding(.trailing, 2)
                
                VStack {
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.blue)
                        .frame(width: 90, height: 110)
                        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                        
                        Image("lon")
                        .resizable()
                        .foregroundColor(Color.white)
                        .scaledToFit()
                        .frame(height: 73)
                        .padding(.bottom, 35)
                        
                        Text("London")
                        .padding(.top, 48)
                        .font(.system(size: 13))
                        .foregroundColor(Color.white)
                        
                        RoundedRectangle(cornerRadius:9)
                           .foregroundColor(Color.pink)
                           .frame(width: 30, height: 30)
                           .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                            .padding(.top, 100)
                        
                        Image(systemName: "arrow.right.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 15)
                        .foregroundColor(Color.white)
                        .padding(.top, 100)
                        
                    }
                    
                
                }
                .padding(.leading, 2)
                .padding(.trailing, 2)
                
                VStack {
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.blue)
                        .frame(width: 90, height: 110)
                        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                        
                        Image("sf")
                        .resizable()
                        .foregroundColor(Color.white)
                        .scaledToFit()
                        .frame(height: 70)
                        .padding(.bottom,38)
                        
                        Text("San Fran")
                        .padding(.top, 48)
                        .font(.system(size: 13))
                        .foregroundColor(Color.white)
                        
                        RoundedRectangle(cornerRadius:9)
                           .foregroundColor(Color.pink)
                           .frame(width: 30, height: 30)
                           .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                            .padding(.top, 100)
                        
                        Image(systemName: "arrow.right.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 15)
                        .foregroundColor(Color.white)
                        .padding(.top, 100)
                        
                    }
                            
                
                }
                .padding(.leading, 2)
                .padding(.trailing, 2)
                
                VStack {
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.blue)
                        .frame(width: 90, height: 110)
                        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                        
                        Image("ny")
                        .resizable()
                        .foregroundColor(Color.white)
                        .scaledToFit()
                        .frame(height: 70)
                        .padding(.bottom, 40)
                                                
                        Text("New York")
                            .padding(.top, 48)
                            .font(.system(size: 13))
                            .foregroundColor(Color.white)
                        
                        RoundedRectangle(cornerRadius:9)
                           .foregroundColor(Color.pink)
                           .frame(width: 30, height: 30)
                           .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                            .padding(.top, 100)
                        
                        Image(systemName: "arrow.right.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 15)
                        .foregroundColor(Color.white)
                        .padding(.top, 100)
                    }
                    
                    
                
                }
                .padding(.leading, 2)
                .padding(.trailing, 2)
                
            }.padding(.bottom, 15)
            
            Spacer()
                    
        }
        .frame(width: 375, height: 140)
        .padding(.top, 10)
        .padding(.trailing, 5)
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
        .previewLayout(.fixed(width: 410, height: 200))
    }
}
