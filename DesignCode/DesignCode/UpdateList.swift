//
//  UpdateList.swift
//  DesignCode
//
//  Created by Cameron Joyner on 7/6/20.
//  Copyright © 2020 Cameron Joyner. All rights reserved.
//

import SwiftUI

struct UpdateList: View {
    
    @ObservedObject var store = UpdateStore()
    
    func addUpdate() {
        
        store.updates.append(Update(image: "card1", title: "New Item", text: "TEXT", date: "jan 1"))
        
    }
    
    var body: some View {
        NavigationView { //important for swiping back to the link
            List {
                ForEach(store.updates) { update in
                    NavigationLink(destination: UpdateDetail(update: update)) {
                        //second value correspons to 14
                        HStack {
                            
                            Image(update.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 80)
                                .background(Color.black)
                                .cornerRadius(20)
                                .padding(.trailing, 4)
                            
                            VStack(alignment: .leading, spacing: 8.0) {
                                
                                Text(update.title)
                                    .font(.system(size: 20, weight: .bold))
                                Text(update.text)
                                    .lineLimit(2)
                                    .font(.subheadline)
                                .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                                
                                Text(update.date)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                                
                            }
                        }
                        .padding(.vertical, 8)
                    }
                }
                .onDelete { index in
                    self.store.updates.remove(at: index.first!)
                }
                .onMove { (source: IndexSet, destination: Int)in
                    self.store.updates.move(fromOffsets: source, toOffset: destination)
                }
                
            }
        .navigationBarTitle(Text("Updates"))
        .navigationBarItems(leading: Button(action: addUpdate) {
        Text("Add Update")
        }, trailing: EditButton())
        }
    }
}

struct UpdateList_Previews: PreviewProvider {
    static var previews: some View {
        UpdateList()
    }
}

struct Update: Identifiable {
    var id = UUID() //for autgeneration
    var image: String
    var title: String
    var text: String
    var date: String
    
}

let updateData = [

    Update(image: "Card1", title: "SwiftUI Advanced", text: "Hey here's a little smaple text", date: "Jan 1"),
    Update(image: "Card2", title: "Protopie", text: "Ok here is a little bit more than than", date: "Jan 1"),
    Update(image: "Card3", title: "Webflow", text: "Yep here is some as well ok got it", date: "Jan 1"),
    Update(image: "Card4", title: "UX Research", text: "Morty!! Come on Morty!", date: "Jan 1"),
    Update(image: "Card5", title: "Framer Playground", text: "And this is the last one", date: "Jan 1")

]
