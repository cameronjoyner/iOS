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
    
        Box(id: 0, title: "Modern Forest Home", imageUrl: "house1", country: "Norway", favorite: true),
        Box(id: 1, title: "Nordic Escape", imageUrl: "house2", country: "Sweden", favorite: false),
        Box(id: 2, title: "Eco-Friendly Cabin", imageUrl: "house3", country: "Sweden", favorite: false),
        Box(id: 3, title: "Minimalist Living Room", imageUrl: "house4", country: "Spain", favorite: false),
        Box(id: 4, title: "Sicilian Glass House", imageUrl: "house5", country: "Italy", favorite: false)
    
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
        
        VStack {
        
        ZStack {
              //VStack(alignment: .leading) {
                GeometryReader { geo in
                    Image(self.box.imageUrl)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        //.frame(width: 300, height: 375)
                        .frame(width: geo.size.width)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(12)
                        //.padding(.leading, 10)
                        .shadow(color: Color.gray.opacity(0.4), radius: 10, x: 0, y: 0)
                        
                }
                .frame(width: 300, height: 375)
                .padding(.bottom, 40)
            
            if (box.favorite == false){
                
                Image(systemName: "heart")
                    .foregroundColor(Color.white)
                    .frame(width: 50, height: 50)
                    .background(Color.black.opacity(0.7))
                    .cornerRadius(25)
                    .padding(.top, 250)
                    .padding(.trailing, 220)
                
            } else {
                
                Image(systemName: "heart.fill")
                   .foregroundColor(Color.white)
                   .frame(width: 50, height: 50)
                   .background(Color.black.opacity(0.7))
                   .cornerRadius(25)
                   .padding(.top, 250)
                   .padding(.trailing, 220)
                
                
            }

                /*
                .frame(width:250, height: 65, alignment: .center)
                .padding(.leading, 5)
                .background(Color.black.opacity(0.7))
                .cornerRadius(12)
                                
                */
            //.padding(.leading, 25)
            
            //}
            
            VStack(alignment: .leading) {
                Text(box.title)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
            
                Text(box.country)
                    .font(.subheadline)
                    .fontWeight(.regular)
                    .foregroundColor(Color.black)
            
            }
            .frame(width:290, height: 40)
            .padding(.top, 385)
            .padding(.trailing, 140)
             
        }

        .frame(width: 310, height: 440)
        .padding(.trailing, 5)
        //.shadow(color: Color.black.opacity(0.15), radius: 5, x: 10, y: 10)
        //.frame(width: 100, height: 100)
        }
    }
    
}


struct HomeScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScrollView()
        .previewLayout(.fixed(width: 375, height: 450))
    }
}
