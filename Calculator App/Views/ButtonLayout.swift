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
    
    @EnvironmentObject var currentTheme: VisualTheme
    
    // figure out how to instantiate this correctly (maybe feed it in as an arg???)
    var buttonRows: [[ButtonModel]] = [
        [
            ClearButton(label: "C", color: .secondary),
            ParButton(label: "(", color: .secondary),
            ParButton(label: ")", color: .secondary),
            OperatorButton(label: add, color: .pink)
        ],
        [
            NumberButton(label: "7", color: .gray),
            NumberButton(label: "8", color: .gray),
            NumberButton(label: "9", color: .gray),
            OperatorButton(label: sub, color: .pink)
        ],
        [
            NumberButton(label: "4", color: .gray),
            NumberButton(label: "5", color: .gray),
            NumberButton(label: "6", color: .gray),
            OperatorButton(label: mult, color: .pink)
        ],
        [
            NumberButton(label: "1", color: .gray),
            NumberButton(label: "2", color: .gray),
            NumberButton(label: "3", color: .gray),
            OperatorButton(label: div, color: .pink)
        ],
        [
            ImageButton(imageName: "gearshape.fill", color: .secondary),
            NumberButton(label: "0", color: .gray),
            DotButton(label: ".", color: .secondary),
            EqualsButton(label: eq, color: .pink)
        ]
    ]


    var body: some View {
        HStack(alignment: .center) {
            VStack {
                ForEach(buttonRows.indices) { i in
                    HStack {
                        ForEach(buttonRows[i].indices) { j in
                            CalculatorButton(fb: buttonRows[i][j], screenWidth: screenWidth) {
                                buttonRows[i][j].modify(expression: &expression)
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
            .environmentObject(VisualTheme())
    }
}
