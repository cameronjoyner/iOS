//
//  ScrollView.swift
//  architecture
//
//  Created by Cameron Joyner on 6/25/20.
//  Copyright © 2020 com.example. All rights reserved.
//

import SwiftUI

struct Box {
    var id: Int
    let title, imageUrl, country: String
    @State var favorite: Bool
}

struct HomeScrollView: View {
    
    var boxes:[Box] = [
    
        
        Box(id: 4, title: "Sicilian Glass House", imageUrl: "house5", country: "Italy", favorite: true),
        Box(id: 0, title: "Modern Forest Home", imageUrl: "house1", country: "Norway", favorite: false),
        Box(id: 1, title: "Nordic Escape", imageUrl: "house2", country: "Sweden", favorite: false),
        Box(id: 2, title: "Eco-Friendly Cabin", imageUrl: "house3", country: "Sweden", favorite: false),
        Box(id: 3, title: "Minimalist Living Room", imageUrl: "house4", country: "Spain", favorite: false)
    
    ]
    
    var body: some View {
        
                       
       ScrollView(Axis.Set.horizontal, showsIndicators: false) {
           HStack {
            ForEach(boxes, id: \.id){ box in
                   BoxView(box: box)
               }
           }
       }
       //.background(Color.red)
       //.frame(height: 250)
       //.offset(x: 12, y: -215)
       //.navigationBarTitle("Home")
       }
    }

struct BoxView: View {
    
    var box: Box
    
    var body: some View{
        
        VStack(alignment: .leading) {
        
        ZStack {
              //VStack(alignment: .leading) {
            Image(self.box.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 375)
                .clipShape(RoundedRectangle(cornerRadius: 22))
                .shadow(color: Color.gray.opacity(0.4), radius: 10, x: 0, y: 0)
            
            if (box.favorite == false){
                
                Image(systemName: "heart")
                    .foregroundColor(Color.white)
                    .frame(width: 50, height: 50)
                    .background(Color.black.opacity(0.7))
                    .cornerRadius(25)
                    .padding(.top, 295)
                    .padding(.trailing, 220)
                
            } else {
                
                Image(systemName: "heart.fill")
                   .foregroundColor(Color.white)
                   .frame(width: 50, height: 50)
                   .background(Color.black.opacity(0.7))
                   .cornerRadius(25)
                   .padding(.top, 295)
                   .padding(.trailing, 220)
                
                
            }
            
             
        } //end of ZStack
        .frame(width: 310, height: 390)
        .padding(.trailing, 5)
        
        Text(box.title)
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(Color.black)
            .padding(.leading, 5)
    
        Text(box.country)
            .font(.subheadline)
            .fontWeight(.regular)
            .foregroundColor(Color.black)
            .padding(.leading, 5)
            
        } //end of VStack
    }
    
}


struct HomeScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScrollView()
        .previewLayout(.fixed(width: 375, height: 450))
    }
}
