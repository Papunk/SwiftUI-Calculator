//
//  ButtonSet.swift
//  Calculator App
//
//  Created by Pedro Pagán on 7/3/21.
//

import Foundation

/**
 * A button set consists of a set of 4x5 buttons
 */
struct ButtonSet {
    var t: VisualTheme
    
    var buttonRows: [[ButtonModel]] {
        get {
            [
                [
                    ClearButton(label: "C", color: t.auxColor),
                    ParButton(label: "(", color: t.auxColor),
                    ParButton(label: ")", color: t.auxColor),
                    OperatorButton(label: add, color: t.opColor)
                ],
                [
                    NumberButton(label: "7", color: .gray),
                    NumberButton(label: "8", color: .gray),
                    NumberButton(label: "9", color: .gray),
                    OperatorButton(label: sub, color: t.opColor)
                ],
                [
                    NumberButton(label: "4", color: .gray),
                    NumberButton(label: "5", color: .gray),
                    NumberButton(label: "6", color: .gray),
                    OperatorButton(label: mult, color: t.opColor)
                ],
                [
                    NumberButton(label: "1", color: .gray),
                    NumberButton(label: "2", color: .gray),
                    NumberButton(label: "3", color: .gray),
                    OperatorButton(label: div, color: t.opColor)
                ],
                [
                    ImageButton(imageName: "gearshape.fill", color: .secondary),
                    NumberButton(label: "0", color: .gray),
                    DotButton(label: ".", color: .secondary),
                    EqualsButton(label: eq, color: .pink)
                ]
            ]
        }
    }
}
