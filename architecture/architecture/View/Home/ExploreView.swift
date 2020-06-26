//
//  Explore View.swift
//  architecture
//
//  Created by Cameron Joyner on 6/25/20.
//  Copyright © 2020 com.example. All rights reserved.
//

import SwiftUI

struct ExploreView: View {
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
                
            }
            
            Spacer()
            
            HStack {
                
                VStack {
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 15)
                        //.frame(width: 70, height: 40)
                        .foregroundColor(Color.blue)
                        .frame(width: 182, height: 170)
                        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                        
                        Text("New York")
                        
                    }
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(Color.blue)
                        .frame(width: 182, height: 170)
                        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                        
                        
                        Text("Paris")
                        
                    }
                    .padding(.top, 5)
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(Color.blue)
                        .frame(width: 182, height: 65)
                        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                        
                        
                        Text("Amsterdam")
                        
                    }
                    .padding(.top, 5)
                    
                    
                    Spacer()
                    
                }//.padding(.leading, 5)
                
                
                
                VStack {
                    
                    ZStack {
                       
                       RoundedRectangle(cornerRadius: 15)
                       .foregroundColor(Color.blue)
                       .frame(width: 182, height: 200)
                       .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                        
                       Text("New York")
                       
                   }
                   
                   ZStack {
                       
                       RoundedRectangle(cornerRadius: 15)
                       .foregroundColor(Color.blue)
                       .frame(width: 182, height: 200)
                       .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
                    
                       Text("Paris")
                       
                   }.padding(.top, 5)
                    
                    Spacer()
                    
                }.padding(.leading, 10)
                

                
                
            }.offset(x: -5)
            
            
        }
        
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
        .previewLayout(.fixed(width: 375, height: 500))
    }
}
