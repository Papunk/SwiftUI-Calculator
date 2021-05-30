//
//  CalculatorDisplay.swift
//  Calculator App
//
//  Created by Pedro Pagán on 5/29/21.
//

import SwiftUI

struct CalculatorDisplay: View {
    @State var expression: String
    var screenWidth: CGFloat
    var screenHeight: CGFloat
        
    var body: some View {
        
        Text(expression)
            .frame(width: screenWidth - 15, height: screenHeight / 4, alignment: .center)
            .background(Color.gray.opacity(0.1))
            .font(Font.title).colorInvert()
            .clipShape(RoundedRectangle(cornerSize: CGSize.init(width: 30, height: 30)))
            .overlay(RoundedRectangle(cornerSize: .init(width: 30, height: 30)).stroke(lineWidth: 3)).colorInvert()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct CalculatorDisplay_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorDisplay(expression: "2•(1+3)÷3", screenWidth: UIScreen.main.bounds.width, screenHeight: UIScreen.main.bounds.height)
    }
}