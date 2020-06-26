//
//  HomeExploreView.swift
//  architecture
//
//  Created by Cameron Joyner on 6/25/20.
//  Copyright © 2020 com.example. All rights reserved.
//

import SwiftUI

struct HomeExploreView: View {
    var body: some View {
        
        ScrollView(Axis.Set.horizontal, showsIndicators: false) {
            HStack {
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 35)
                        //.frame(width: 70, height: 40)
                        .foregroundColor(Color.blue)
                    Text("New")
                        .foregroundColor(Color.white)
                    
                }.frame(width: 100, height: 40)
                
                ZStack {
                
                    Text("Popular")
                    
                }.frame(width: 100, height: 40)
                
                ZStack {
                
                    Text("Editor's Pick")
                    
                }.frame(width: 120, height: 40)
                
                ZStack {
                
                    Text("Apartments")
                    
                }.frame(width: 120, height: 40)
                
                ZStack {
                
                    Text("Homes")
                    
                }.frame(width: 100, height: 40)
                
            }
            
        }
        
    }
}

struct HomeExploreView_Previews: PreviewProvider {
    static var previews: some View {
        HomeExploreView()
        .previewLayout(.fixed(width: 375, height: 50))
    }
}
