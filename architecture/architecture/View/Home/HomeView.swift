//
//  ContentView.swift
//  architecture
//
//  Created by Cameron Joyner on 6/24/20.
//  Copyright © 2020 com.example. All rights reserved.
//

import SwiftUI


struct HomeView: View {
        
    var body: some View {
        
        VStack(spacing: 5) {
            
            HeaderView()
            
            ScrollView(Axis.Set.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    
                HomeExploreView()
            
                Spacer()
                
                HomeScrollView()
                    
                Spacer()
                    
                    SearchView().padding(.leading, 3)
                 
                Spacer()
                    
                Discover2()
                    
                Spacer()
                
                    
                }
                .padding(.leading, 10)
            } //end scrollview
        } //end VStack
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        .previewLayout(.fixed(width: 400, height: 1000))
            .padding(.top, 20)
    }
}


/*
struct ImageOverlay: View {
    
    let box: Box

    var body: some View {
        ZStack {
            Text(box.title)
                .font(.callout)
                .padding(10)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(8)
        .padding(16)
    }
}
 
 https://www.simpleswiftguide.com/how-to-add-text-overlay-on-image-in-swiftui/
 */
