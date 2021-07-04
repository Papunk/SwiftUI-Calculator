//
//  ColorThemes.swift
//  Calculator App
//
//  Created by Pedro Pagán on 5/31/21.
//

import SwiftUI


// Add info for opacity and font
struct VisualTheme {
    let numColor: Color
    let auxColor: Color
    let opColor: Color
    let dispColor: Color
    let dispTextColor: Color
    let buttonTextColor: Color
}


var lightTheme = VisualTheme(numColor: .gray, auxColor: .secondary, opColor: .pink, dispColor: .gray, dispTextColor: .black, buttonTextColor: .white)
var Texas = (n: Color(#colorLiteral(red: 1, green: 0.9775413871, blue: 0.9145861268, alpha: 1)), m: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), o: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
