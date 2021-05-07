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
    let color: Color
    let function: () -> ()
}

func emptyPlaceHolderFunction() {}

struct CalculatorButton: View {
    var fb: ButtonModel
    var size: CGFloat
    
    var body: some View {
        Button(fb.label, action: fb.function)
            .padding()
            .frame(width: size, height: size)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .background(fb.color)
            .foregroundColor(.white)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 10)
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(fb: ButtonModel(label: "test", color: .pink, function: emptyPlaceHolderFunction), size: 100)    }
}
