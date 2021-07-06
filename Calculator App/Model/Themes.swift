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



let lightTheme = VisualTheme(numColor: .gray, auxColor: .secondary, opColor: .pink, dispColor: .gray.opacity(0.1), dispTextColor: .black, buttonTextColor: .white)
let darkTheme = VisualTheme(numColor: .gray, auxColor: .secondary, opColor: .pink, dispColor: .gray.opacity(0.1), dispTextColor: .black, buttonTextColor: .white)
let texas = VisualTheme(numColor: .gray, auxColor: .secondary, opColor: .pink, dispColor: .gray.opacity(0.1), dispTextColor: .black, buttonTextColor: .white)

let themes = [lightTheme, darkTheme, texas]
var currentTheme = lightTheme
