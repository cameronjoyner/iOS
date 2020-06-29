//
//  HeaderView.swift
//  architecture
//
//  Created by Cameron Joyner on 6/25/20.
//  Copyright © 2020 com.example. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        HStack {
                                  
            Text("Home")
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(Color.black)
                .padding(.leading)
                      
            Spacer()
            
            Button(action: {
                
                print("Information")
                
            }) {
                
              Image(systemName: "message.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(height: 30)
                
            }
            .padding(.trailing)
            .accentColor(Color.primary)
            
        }

    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
