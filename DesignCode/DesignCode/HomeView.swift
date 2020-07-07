//
//  HomeView.swift
//  DesignCode
//
//  Created by Cameron Joyner on 7/6/20.
//  Copyright © 2020 Cameron Joyner. All rights reserved.
//

import SwiftUI

//UIspecific to the home screen

struct HomeView: View {
    @Binding var showProfile: Bool
    @State var showUpdate = false
    @Binding var showContent: Bool
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack { //our top menu view made into a VStack so that we can use a spacer and send it up to the top
                HStack {
                    Text("Watching")
                        .font(.system(size: 28, weight: .bold))
                        //.modifier(customFontModifer(size: 27))
                    
                    Spacer()
                    
                    AvatarView(showProfile: $showProfile) //this is the binding declaration instead of a state!
                    
                    Button(action: { self.showUpdate.toggle() }) {
                        Image(systemName: "bell")
                            .renderingMode(.original)
                            .font(.system(size: 16, weight: .medium))
                            .frame(width: 36, height: 36)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                    }
                    .sheet(isPresented: $showUpdate){
                        UpdateList()
                    }
                    //this is dope
                    //built in iOS gestures slash swiping
                    //this is a MODAL presentation
                }
                .padding(.horizontal)
                .padding(.leading, 14)
                .padding(.top, 30)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    WatchRingsView()
                        .padding(.horizontal, 30)
                        .padding(.bottom, 30)
                        .onTapGesture {
                            self.showContent = true
                        }
                } //our custom modifier from Modifiers.swift
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(sectiondata) { item in //sectondata is our data array
                            GeometryReader { geometry in
                                SectionView(section: item)
                                    .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX - 30) / -20
                                        ) , axis: (x: 0, y: 10, z: 0))
                                    //the -30 takes care of the initial offset
                            }
                            .frame(width: 275, height: 275)
                            //same as the card above
                        }
                    }
                .padding(30)
                    .padding(.bottom, 30)
                }
                .offset(y: -30)
                
                HStack {
                    Text("Courses")
                        .font(.title).bold()
                    Spacer()
                }
                .padding(.leading, 30)
                .offset(y: -60)
                
                SectionView(section: sectiondata[2], width: screen.width - 60, height: 275)
                .offset(y: -60)
                
                
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showProfile: .constant(false), showContent: .constant(false))
    }
}

//this is differnet from a subview because it has its own preview.

struct SectionView: View {
    
    var section: Section
    var width: CGFloat = 275
    var height: CGFloat = 275
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(section.title)
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(Color.white)
                    .frame(width: 160, alignment: .leading)
                Spacer()
                Image(section.logo)
            }
            Text(section.text.uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
            
            section.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 210)
        }
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .frame(width: width, height: height)
        .background(section.color)
        .cornerRadius(20)
        .shadow(color: section.color.opacity(0.3), radius: 20, x: 0, y: 20)
    }
}


struct Section: Identifiable {
    var id = UUID() //give unique id to data
    var title: String
    var text: String
    var logo: String
    var image: Image
    var color: Color
}

let sectiondata = [
    Section(title: "Prototype designs in SwiftUI", text: "18 sections", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Card1")), color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))), //best for prototyping quickly instead of color: Color("card1")
        //Image("Card1")
    Section(title: "Build a SwiftUI app", text: "20 sections", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Card4")), color: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))),
    Section(title: "Create a dynamic website", text: "32 sections", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Card3")), color: Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)))
]

struct WatchRingsView: View {
    var body: some View {
        HStack(spacing: 30.0) {
            HStack(spacing: 12.0) {
                RingView(color1: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), color2: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1), width: 44, height: 44, percent: 68, show: .constant(true))
                VStack(alignment: .leading, spacing: 4.0) {
                    Text("Six minutes left")
                        .bold().modifier(fontModifer(style: .subheadline))
                    //have to put .bold() first because of the custom mods
                    Text("watched 10 minutes today")
                        .modifier(fontModifer(style: .caption))
                }
                
            }
            .padding(8)
            .background(Color.white)
            .cornerRadius(20)
            .modifier(shadowModifer())
            
            HStack(spacing: 12.0) {
                RingView(color1: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), color2: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), width: 33, height:33, percent: 30, show: .constant(true))
                
            }
            .padding(8)
            .background(Color.white)
            .cornerRadius(20)
            .modifier(shadowModifer())
            
            HStack(spacing: 12.0) {
                RingView(color1: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), color2: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1), width: 33, height: 33, percent: 57, show: .constant(true))
                
            }
            .padding(8)
            .background(Color.white)
            .cornerRadius(20)
            .modifier(shadowModifer())
            
        }
    }
}
