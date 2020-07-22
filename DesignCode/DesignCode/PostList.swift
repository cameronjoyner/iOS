//
//  PostList.swift
//  DesignCode
//
//  Created by Cameron Joyner on 7/15/20.
//  Copyright © 2020 Cameron Joyner. All rights reserved.
//

//testing our api data as a list of posts

import SwiftUI

struct PostList: View {
    //@State var posts: [Post] = []
    @ObservedObject var store = DataStore()
    
    var body: some View {
        List(store.posts) { post in
            VStack(alignment: .leading, spacing: 8.0) {
                Text(post.title).font(.system(.title, design: .serif)).bold()
                Text(post.body).font(.subheadline).foregroundColor(.secondary)
            }
            
        }
        
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
