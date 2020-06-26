//
//  ContentView.swift
//  architecture
//
//  Created by Cameron Joyner on 6/24/20.
//  Copyright © 2020 com.example. All rights reserved.
//

import SwiftUI

extension Color {

    static let babyBlue = Color("babyBlue")
    
}


struct ContentView: View {
    
    var body: some View{
        
        VStack {
            
            HeaderView()
            
            Spacer()

            TabView {
                
                HomeView()
                    .tabItem ({
                            Image(systemName: "house.fill")
                            Text("Home")
                })
                
                ArticleView()
                    .tabItem ({
                            Image(systemName: "book.fill")
                            Text("Articles")
                })
                
                FavoritesView()
                    .tabItem ({
                            Image(systemName: "heart.fill")
                            Text("Articles")
                })
                
                MapView()
                    .tabItem ({
                            Image(systemName: "map.fill")
                            Text("Map")
                })
                
                ProfileView()
                    .tabItem ({
                            Image(systemName: "person.fill")
                            Text("Profile")
                })
                                
            }
            //.accentColor(Color.green)
            //color of the menu when clicked
        
        }
        
    }
}


struct ViewController_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
