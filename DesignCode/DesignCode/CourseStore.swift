//
//  CourseStore.swift
//  DesignCode
//
//  Created by Cameron Joyner on 7/16/20.
//  Copyright © 2020 Cameron Joyner. All rights reserved.
//

import SwiftUI
import Contentful
import Combine

let client = Client(spaceId: "anccdwu4lra1", accessToken: "vmhSXfcrJVUKBmHd21PxR6mim-F9rCqEWHwIKB3R1AE")

func getArray(id: String, completion: @escaping([Entry]) -> ())  {
    let query = Query.where(contentTypeId: id)
    
    client.fetchArray(of: Entry.self, matching: query) { result in
        switch result {
        case .success(let array):
            DispatchQueue.main.async {
                completion(array.items)
            }
        case .failure(let error):
            print(error)
        }
    }
}

class CourseStore: ObservableObject {
    @Published var courses: [Course] = courseData
    
    init() {
        getArray(id: "course") { (items) in
            items.forEach { (item) in
                print(item.fields["title"] as! String)
            }
        }
    }
}
