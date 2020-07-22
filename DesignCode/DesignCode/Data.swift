//
//  Data.swift
//  DesignCode
//
//  Created by Cameron Joyner on 7/15/20.
//  Copyright © 2020 Cameron Joyner. All rights reserved.
//
//https://designcode.io/swiftui2-api-and-json

import SwiftUI

struct Post: Codable, Identifiable {
    
    let id = UUID()
    var title: String
    var body: String
    
}

class Api {
    //the next line returns values instead of printing
    //must be done asynchroniously
    func getPosts(completion: @escaping ([Post]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            //above confirms that the data is the data we are anticipating
            
            let posts = try! JSONDecoder().decode([Post].self, from: data)
            
            DispatchQueue.main.async {
                completion(posts)
            }
        }
        .resume()
    }
}
