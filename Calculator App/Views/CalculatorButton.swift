//
//  CalculatorButton.swift
//  Calculator App
//
//  Created by Pedro Pagán on 5/6/21.
//

import SwiftUI

var op = (add: "+", sub: "-", div: "÷", mult: "×", eq: "=")
var num = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

struct ButtonModel {
    let label: String
    let imageName: String
    let color: Color
    let function: () -> Void
    
    init(label: String, color: Color, function: @escaping () -> Void) {
        self.label = label
        self.color = color
        self.function = function
        self.imageName = ""
    }
    
    init(imageName: String, color: Color, function: @escaping () -> Void) {
        self.imageName = imageName
        self.color = color
        self.function = function
        self.label = ""
    }
}


func emptyPlaceHolderFunction() {}

struct CalculatorButton: View {
    var fb: ButtonModel
    var screenWidth: CGFloat
    
    var body: some View {
        Button(action: fb.function) {
            ZStack {
                // empty imageName results in text button and vice versa
                Image(systemName: fb.imageName)
                Text(fb.label)
            }
        }
        .padding()
        .frame(width: screenWidth / 4 - 10, height: screenWidth / 4 - 10)
        .font(.title)
        .background(fb.color)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerSize: .init(width: 20, height: 20)))
        .overlay(RoundedRectangle(cornerSize: .init(width: 20, height: 20)).stroke(lineWidth: 2).colorInvert())
        .shadow(radius: 10)
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(fb: ButtonModel(label: "test", color: .pink, function: emptyPlaceHolderFunction), screenWidth: 400)    }
}
