//
//  ButtonModel.swift
//  Calculator App
//
//  Created by Pedro Pagán on 7/2/21.
//

var op = (add: "+", sub: "-", div: "÷", mult: "×", eq: "=")
var num = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

struct ButtonModel {
    let label: String
    let imageName: String
    let color: Color
    
    init(label: String, color: Color) {
        self.label = label
        self.color = color
        self.imageName = ""
    }
    
    init(imageName: String, color: Color) {
        self.imageName = imageName
        self.color = color
        self.label = ""
    }
}
