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
                    Text("Meet Cam")
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
                    
                //this is the horizontal scrollview in the middle of the page
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
                /*
                HStack {
                    Text("Work & Projects")
                        .font(.title).bold()
                    Spacer()
                }
                .padding(.leading, 30)
                .offset(y: -60)
                
                SectionView(section: sectiondata[2], width: screen.width - 60, height: 275)
                 */
                CourseList()
                    .offset(y: -80)
                
                
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
                VStack(alignment: .leading) {
                    Text(section.title)
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(Color.white)
                        .frame(width: 160, alignment: .leading)
                    Text(section.text.uppercased())
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Spacer()
                ZStack {
                    Circle()
                    .foregroundColor(Color("card7"))
                    .frame(width: 40, height: 40)
                    section.logo
                        .foregroundColor(Color.white)
                }
            }
            Spacer()
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
    //var logo: String
    var logo: Image
    var image: Image
    var color: Color
}

let sectiondata = [
    Section(title: "Raleigh, NC", text: "1995 - 2013", logo: Image(systemName : "house"), image: Image(uiImage: #imageLiteral(resourceName: "Card1")), color: Color("card1")), //best for prototyping quickly instead of color: Color("card1")
        //Image("Card1")
    Section(title: "Anaco, Venezuela", text: "2013 - 2014", logo: Image(systemName : "airplane"), image: Image(uiImage: #imageLiteral(resourceName: "Card4")), color: Color("card2")),
    Section(title: "Columbia, SC", text: "2014 - 2016", logo: Image(systemName : "book"), image: Image(uiImage: #imageLiteral(resourceName: "Card3")), color: Color("card3")),
    Section(title: "Austin, TX", text: "2017 - 2019", logo: Image(systemName : "headphones"), image: Image(uiImage: #imageLiteral(resourceName: "Card3")), color: Color("card4")),
    Section(title: "New York, NY", text: "2019 - NOWs", logo: Image(systemName : "book.fill"), image: Image(uiImage: #imageLiteral(resourceName: "Card3")), color: Color("card4"))
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
