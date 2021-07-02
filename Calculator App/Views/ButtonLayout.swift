//
//  ButtonLayout.swift
//  Calculator App
//
//  Created by Pedro Pagán on 5/6/21.
//

import SwiftUI

struct ButtonLayout: View {
    var screenWidth: CGFloat
    @Binding var expression: String
    
    var buttonRows = [
        [
            ButtonModel(label: "C", color: .secondary),
            ButtonModel(label: "(", color: .secondary),
            ButtonModel(label: ")", color: .secondary),
            ButtonModel(label: add, color: .pink)
        ],
        [
            ButtonModel(label: "7", color: .gray),
            ButtonModel(label: "8", color: .gray),
            ButtonModel(label: "9", color: .gray),
            ButtonModel(label: sub, color: .pink)
        ],
        [
            ButtonModel(label: "4", color: .gray),
            ButtonModel(label: "5", color: .gray),
            ButtonModel(label: "6", color: .gray),
            ButtonModel(label: mult, color: .pink)
        ],
        [
            ButtonModel(label: "1", color: .gray),
            ButtonModel(label: "2", color: .gray),
            ButtonModel(label: "3", color: .gray),
            ButtonModel(label: div, color: .pink)
        ],
        [
            ButtonModel(imageName: "gearshape.2", color: .secondary),
            ButtonModel(label: "0", color: .gray),
            ButtonModel(label: ".", color: .secondary),
            ButtonModel(label: eq, color: .pink)
        ]
    ]


    var body: some View {
        HStack(alignment: .center) {
            VStack {
                ForEach(buttonRows.indices) { i in
                    HStack {
                        ForEach(buttonRows[i].indices) { j in
                            CalculatorButton(fb: buttonRows[i][j], screenWidth: screenWidth) {
                                if let newExp = buttonRows[i][j].evaluate(expression) {
                                    expression = newExp
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ButtonLayout_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLayout(screenWidth: UIScreen.main.bounds.width, expression: .constant(""))
    }
}
