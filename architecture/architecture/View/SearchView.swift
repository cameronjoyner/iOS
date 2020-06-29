//
//  SearchView.swift
//  architecture
//
//  Created by Cameron Joyner on 6/26/20.
//  Copyright © 2020 com.example. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        
        ZStack {
            HStack {
                
                Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFit()
                .frame(height: 18)
                
                Text("Search")
                    .foregroundColor(Color.black.opacity(0.9))
                    .padding(.leading, 10)
                Spacer()
                
            }
            .padding(.leading, 20)
            .frame(width: 365, height: 45)
            //.background(Color.gray.opacity(0.2))
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.6), radius: 10, x: 10, y: 10)
            //.padding(.trailing, 10)
            
            RoundedRectangle(cornerRadius: 10)
            .frame(width: 375, height:45)
            .foregroundColor(Color.gray.opacity(0.2))
            
        }.frame(width: 375, height: 80)
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
        .previewLayout(.fixed(width: 400, height: 80))
    }
}
