//
//  Discover2.swift
//  architecture
//
//  Created by Cameron Joyner on 6/28/20.
//  Copyright © 2020 com.example. All rights reserved.
//

import SwiftUI


struct City: Identifiable {
    
    var id: Int
    var imageURL: String
    var name: String
    
}


struct Discover2: View {
    
    let cities: [City] = [
        .init(id: 1, imageURL: "madrid", name: "Madrid"),
        .init(id: 2, imageURL: "lon", name: "London"),
        .init(id: 3, imageURL: "sf", name: "San Fran"),
        .init(id: 4, imageURL: "ny", name: "New York"),
        .init(id: 5, imageURL: "ny", name: "Peru")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
                       
            HStack {
                                     
               Text("Discover")
                   .fontWeight(.bold)
                   .font(.system(size: 22))
                   .foregroundColor(.black)
                   .padding(.leading, 10)
                         
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
           .frame(width: 400, height: 15)
            .padding(.leading, 12)
                   
            ScrollView(Axis.Set.horizontal, showsIndicators: false) {
                HStack {
                   
                    ForEach(cities, id: \.id) { city in
                        
                        cityBox(city: city)
                        
                   }
                    
                }.frame(height: 150)
            }
            .frame(width: 400, height: 130)
            .padding(.leading, 20)
                   
                           
               }
               .frame(width: 385, height: 180)

    }
}

struct cityBox: View {
    
    let city: City
    
    var body: some View {
        
        ZStack {
                               
           RoundedRectangle(cornerRadius: 20)
           .foregroundColor(Color.blue)
           .frame(width: 90, height: 110)
           .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 5, y: 5)
           
           VStack {
            
            Spacer()
        
            Image(city.imageURL)
           .resizable()
           .foregroundColor(Color.white)
           .scaledToFit()
           .frame(height: 70)
            .offset(y: 10)
           
            Text(city.name)
           .font(.system(size: 13))
           .foregroundColor(Color.white)
            .offset(y: 5)
           
            ZStack {
                RoundedRectangle(cornerRadius:9)
                  .foregroundColor(Color.pink)
                  .frame(width: 30, height: 30)
                  .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 5, y: 5)
               
               Image(systemName: "arrow.right.circle")
               .resizable()
               .scaledToFit()
               .frame(height: 15)
               .foregroundColor(Color.white)
                
                }
        
            }
           .frame(width:85, height: 110)
            .padding(.leading, 5)
            .padding(.trailing, 5)
                       
            }
        
    }
}

struct Discover2_Previews: PreviewProvider {
    static var previews: some View {
        Discover2()
        .previewLayout(.fixed(width: 410, height: 200))
    }
}
