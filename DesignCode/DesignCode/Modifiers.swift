//
//  Modifiers.swift
//  DesignCode
//
//  Created by Cameron Joyner on 7/7/20.
//  Copyright © 2020 Cameron Joyner. All rights reserved.
//

import SwiftUI

struct shadowModifer: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 12)
            .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
        
    }
}

struct fontModifer: ViewModifier {
    var style: Font.TextStyle = .body
    
    func body(content: Content) -> some View {
        content
            .font(.system(style, design: .default))
    }
}

struct customFontModifer: ViewModifier {
    
    var size: CGFloat = 28
    
    func body(content: Content) -> some View {
        content.font(.custom("Roboto-bold", size: size))
    }
    
}
