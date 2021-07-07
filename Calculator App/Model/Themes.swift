//
//  ColorThemes.swift
//  Calculator App
//
//  Created by Pedro Pagán on 5/31/21.
//

import SwiftUI


// Add info for opacity and font
class VisualTheme: ObservableObject {
    let numColor: Color
    let auxColor: Color
    let opColor: Color
    let dispColor: Color
    let dispTextColor: Color
    let buttonTextColor: Color
    
    init(numColor: Color, auxColor: Color, opColor: Color, dispColor: Color, dispTextColor: Color, buttonTextColor: Color) {
        self.numColor = numColor
        self.auxColor = auxColor
        self.opColor = opColor
        self.dispColor = dispColor
        self.dispTextColor = dispTextColor
        self.buttonTextColor = buttonTextColor
    }
    
    // debug (no need to worry about aesthetics)
    init() {
        self.numColor = .white
        self.auxColor = .secondary
        self.opColor = .black
        self.dispColor = .white
        self.dispTextColor = .black
        self.buttonTextColor = .black
    }
}



let lightTheme = VisualTheme(numColor: .gray, auxColor: .secondary, opColor: .pink, dispColor: .gray.opacity(0.1), dispTextColor: .black, buttonTextColor: .white)
let darkTheme = VisualTheme(numColor: .gray, auxColor: .secondary, opColor: .pink, dispColor: .gray.opacity(0.1), dispTextColor: .black, buttonTextColor: .white)
let texas = VisualTheme(numColor: .gray, auxColor: .secondary, opColor: .pink, dispColor: .gray.opacity(0.1), dispTextColor: .black, buttonTextColor: .white)

let themes = [lightTheme, darkTheme, texas]
var currentTheme = lightTheme
