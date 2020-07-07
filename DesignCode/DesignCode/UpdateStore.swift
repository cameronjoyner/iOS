//
//  UpdateStore.swift
//  DesignCode
//
//  Created by Cameron Joyner on 7/6/20.
//  Copyright © 2020 Cameron Joyner. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}

struct UpdateStore_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
