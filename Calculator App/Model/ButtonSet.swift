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
            // make a away to customize this...?
            [
                [
                    ClearButton(label: "C", color: t.auxColor),
                    ParButton(label: "(", color: t.auxColor),
                    ParButton(label: ")", color: t.auxColor),
                    OperatorButton(label: add, color: t.opColor)
                ],
                [
                    NumberButton(label: "7", color: t.numColor),
                    NumberButton(label: "8", color: t.numColor),
                    NumberButton(label: "9", color: t.numColor),
                    OperatorButton(label: sub, color: t.opColor)
                ],
                [
                    NumberButton(label: "4", color: t.numColor),
                    NumberButton(label: "5", color: t.numColor),
                    NumberButton(label: "6", color: t.numColor),
                    OperatorButton(label: mult, color: t.opColor)
                ],
                [
                    NumberButton(label: "1", color: t.numColor),
                    NumberButton(label: "2", color: t.numColor),
                    NumberButton(label: "3", color: t.numColor),
                    OperatorButton(label: div, color: t.opColor)
                ],
                [
                    ImageButton(imageName: "gearshape.fill", color: t.auxColor),
                    NumberButton(label: "0", color: t.numColor),
                    DotButton(label: ".", color: t.auxColor),
                    EqualsButton(label: eq, color: t.opColor)
                ]
            ]
        }
    }
}
