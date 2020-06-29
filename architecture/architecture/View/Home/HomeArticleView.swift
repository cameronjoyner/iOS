//
//  ExploreView2.swift
//  architecture
//
//  Created by Cameron Joyner on 6/25/20.
//  Copyright © 2020 com.example. All rights reserved.
//

import SwiftUI

struct HomeArticleView: View {
    var body: some View {
        
        ArticlePreview()
                    
    }
}

struct ArticlePreview: View {
    var body: some View{
        
        VStack(alignment: .leading) {
            
            HStack {
                Text("Title")
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 40, height: 25)
                }
                Image(systemName: "heart.fill")
                .foregroundColor(Color.white)
                .frame(width: 25, height: 25)
                .background(Color.black.opacity(0.7))
                .cornerRadius(25)
                
            }
            
            HStack {
                Image("house2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 110, height: 75)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                    .shadow(color: Color.gray.opacity(0.2), radius: 20, x: 5, y: 15)
                
                Text("Oh boy, this is a really good desctiption that I really like alot oh my goodness look")
                .lineLimit(nil) //allows overflow
                    .frame(height: 75)
                
            }
            
            
        }
        .padding(15)
        .frame(width: 375, height: 135)
        .background(Color.gray)
        .cornerRadius(12)
        .shadow(color: Color.gray.opacity(0.3), radius: 12, x: 10, y: 10)

        
    }
}

struct HomeArticleView_Previews: PreviewProvider {
    static var previews: some View {
        HomeArticleView()
        .previewLayout(.fixed(width: 410, height: 500))
    }
}
