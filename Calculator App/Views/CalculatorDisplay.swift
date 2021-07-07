//
//  CalculatorDisplay.swift
//  Calculator App
//
//  Created by Pedro Pagán on 5/29/21.
//

import SwiftUI


struct CalculatorDisplay: View {
    var screenWidth: CGFloat
    var screenHeight: CGFloat
    @Binding var expression: String
        
    var body: some View {
        Text(expression.isEmpty ? "hello!" : expression)
            .frame(width: screenWidth - 15, height: screenHeight / 4, alignment: .center)
            .background(currentTheme.dispColor)
            .font(Font.title).colorInvert()
            .clipShape(RoundedRectangle(cornerSize: CGSize.init(width: 35, height: 35)))
            .overlay(RoundedRectangle(cornerSize: .init(width: 35, height: 35)).stroke(lineWidth: 3)).colorInvert()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct CalculatorDisplay_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorDisplay(screenWidth: UIScreen.main.bounds.width, screenHeight: UIScreen.main.bounds.height, expression: .constant("2\(mult)(3+1\(div)8)"))
    }
}
