//
//  ButtonLayout.swift
//  Calculator App
//
//  Created by Pedro Pagán on 5/6/21.
//

import SwiftUI


struct ButtonLayout: View {
    var screenWidth: CGFloat
    var buttonRows = [
        [
            ButtonModel(label: "C", color: .secondary, function: emptyPlaceHolderFunction),
            ButtonModel(label: "(", color: .secondary, function: emptyPlaceHolderFunction),
            ButtonModel(label: ")", color: .secondary, function: emptyPlaceHolderFunction),
            ButtonModel(label: op.add, color: .pink, function: emptyPlaceHolderFunction)
        ],
        [
            ButtonModel(label: "1", color: .gray, function: emptyPlaceHolderFunction),
            ButtonModel(label: "2", color: .gray, function: emptyPlaceHolderFunction),
            ButtonModel(label: "3", color: .gray, function: emptyPlaceHolderFunction),
            ButtonModel(label: op.sub, color: .pink, function: emptyPlaceHolderFunction)
        ],
        [
            ButtonModel(label: "4", color: .gray, function: emptyPlaceHolderFunction),
            ButtonModel(label: "5", color: .gray, function: emptyPlaceHolderFunction),
            ButtonModel(label: "6", color: .gray, function: emptyPlaceHolderFunction),
            ButtonModel(label: op.mult, color: .pink, function: emptyPlaceHolderFunction)
        ],
        [
            ButtonModel(label: "7", color: .gray, function: emptyPlaceHolderFunction),
            ButtonModel(label: "8", color: .gray, function: emptyPlaceHolderFunction),
            ButtonModel(label: "9", color: .gray, function: emptyPlaceHolderFunction),
            ButtonModel(label: op.div, color: .pink, function: emptyPlaceHolderFunction)
        ],
        [
            ButtonModel(imageName: "gearshape.2", color: .secondary, function: emptyPlaceHolderFunction),
            ButtonModel(label: "0", color: .gray, function: emptyPlaceHolderFunction),
            ButtonModel(label: ".", color: .secondary, function: emptyPlaceHolderFunction),
            ButtonModel(label: op.eq, color: .pink, function: emptyPlaceHolderFunction)
        ]
    ]


    var body: some View {
        HStack(alignment: .center) {
            VStack {
                ForEach(buttonRows.indices) { i in
                    HStack {
                        ForEach(buttonRows[i].indices) { j in
                            CalculatorButton(fb: buttonRows[i][j], screenWidth: screenWidth)
                        }
                    }
                }
            }
        }
    }
}

struct ButtonLayout_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLayout(screenWidth: UIScreen.main.bounds.width)
    }
}
