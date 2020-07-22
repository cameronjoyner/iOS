//
//  DataStore.swift
//  DesignCode
//
//  Created by Cameron Joyner on 7/16/20.
//  Copyright © 2020 Cameron Joyner. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var posts: [Post] = []
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        Api().getPosts { (posts) in
            self.posts = posts
        }
    }
    
}
