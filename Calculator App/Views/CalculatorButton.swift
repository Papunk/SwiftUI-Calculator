//
//  CalculatorButton.swift
//  Calculator App
//
//  Created by Pedro Pagán on 5/6/21.
//

import SwiftUI

var op = (add: "+", sub: "-", div: "÷", mult: "×", eq: "=")
var num = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

enum ButtonType {
    case action // executes a function
    case display // adds something to the display
}

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


func emptyPlaceHolderFunction() {}

struct CalculatorButton: View {
    var fb: ButtonModel
    var screenWidth: CGFloat
    var function: () -> Void
    
    var body: some View {
        Button(action: function) {
            ZStack {
                // empty imageName results in text button and vice versa
                Image(systemName: fb.imageName)
                Text(fb.label)
                    .font(Font.custom("Avenir", size: 32))
                    .fontWeight(.medium)
            }
        }
        .padding()
        .frame(width: screenWidth / 4 - 10, height: screenWidth / 4 - 10)
        .font(.title)
        .background(
            RadialGradient(
                gradient: Gradient(colors: [fb.color, Color.white]),
                center: .bottom,
                startRadius: 0,
                endRadius: 450
            )
        )
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerSize: .init(width: 20, height: 20)))
        .overlay(RoundedRectangle(cornerSize: .init(width: 20, height: 20)).stroke(lineWidth: 2).colorInvert())
        .shadow(radius: 10, x: 0, y: 10)
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(fb: ButtonModel(label: "t", color: .pink), screenWidth: 400, function: {})
    }
}
