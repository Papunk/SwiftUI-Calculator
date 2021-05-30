//
//  CalculatorDisplay.swift
//  Calculator App
//
//  Created by Pedro Pagán on 5/29/21.
//

import SwiftUI

struct CalculatorDisplay: View {
    @State var expression: String
    var windowWidth: CGFloat
        
    var body: some View {
        
        Text(expression)
            .frame(width: windowWidth - 10, alignment: .trailing)
    }
}

struct CalculatorDisplay_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorDisplay(expression: "2*(1+3)÷3", windowWidth: UIScreen.main.bounds.width - 10)
    }
}
