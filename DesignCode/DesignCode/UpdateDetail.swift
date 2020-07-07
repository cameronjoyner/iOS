//
//  UpdateDetail.swift
//  DesignCode
//
//  Created by Cameron Joyner on 7/6/20.
//  Copyright © 2020 Cameron Joyner. All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
    var update: Update = updateData[0]
    
    var body: some View {
        List { //ScrollView previously
            VStack {
                Image(update.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                Text(update.text)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(update.title)
        }
    //dependent on navigation view wrapper
        .listStyle(DefaultListStyle())
        
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}
