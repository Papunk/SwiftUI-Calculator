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
            ButtonModel(label: op.add, color: .pink)
        ],
        [
            ButtonModel(label: "7", color: .gray),
            ButtonModel(label: "8", color: .gray),
            ButtonModel(label: "9", color: .gray),
            ButtonModel(label: op.sub, color: .pink)
        ],
        [
            ButtonModel(label: "4", color: .gray),
            ButtonModel(label: "5", color: .gray),
            ButtonModel(label: "6", color: .gray),
            ButtonModel(label: op.mult, color: .pink)
        ],
        [
            ButtonModel(label: "1", color: .gray),
            ButtonModel(label: "2", color: .gray),
            ButtonModel(label: "3", color: .gray),
            ButtonModel(label: op.div, color: .pink)
        ],
        [
            ButtonModel(imageName: "gearshape.2", color: .secondary),
            ButtonModel(label: "0", color: .gray),
            ButtonModel(label: ".", color: .secondary),
            ButtonModel(label: op.eq, color: .pink)
        ]
    ]


    var body: some View {
        HStack(alignment: .center) {
            VStack {
                ForEach(buttonRows.indices) { i in
                    HStack {
                        ForEach(buttonRows[i].indices) { j in
                            CalculatorButton(fb: buttonRows[i][j], screenWidth: screenWidth) {
                                expression += buttonRows[i][j].label
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
