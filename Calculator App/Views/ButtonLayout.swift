//
//  ButtonLayout.swift
//  Calculator App
//
//  Created by Pedro Pagán on 5/6/21.
//

import SwiftUI


struct ButtonList {
    static let defaultListSize = 20
    
    let list: [ButtonModel]
    var integrityOK = true // if the number of buttons can be dynmically generated, this is unnecesary
    
    init(list: [ButtonModel]) {
        if list.count != ButtonList.defaultListSize {
            integrityOK = false
        }
        self.list = list
    }
}


let testList = [
    ButtonModel(label: "C", color: .secondary, function: emptyPlaceHolderFunction),
    ButtonModel(label: "(", color: .secondary, function: emptyPlaceHolderFunction),
    ButtonModel(label: ")", color: .secondary, function: emptyPlaceHolderFunction)
]


struct ButtonLayout: View {
    var screenWidth: CGFloat
    var buttonList: [ButtonModel]

    var body: some View {
        //FOREACH might come in handy to generate views that depend on the number of elements
        HStack(alignment: .center) {
            VStack {
                HStack {
                    CalculatorButton(fb: ButtonModel(label: "C", color: .secondary, function: emptyPlaceHolderFunction),
                                     screenWidth: screenWidth)
                    CalculatorButton(fb: ButtonModel(label: "(", color: .secondary, function: emptyPlaceHolderFunction),
                                     screenWidth: screenWidth)
                    CalculatorButton(fb: ButtonModel(label: ")", color: .secondary, function: emptyPlaceHolderFunction),
                                     screenWidth: screenWidth)
                }
                HStack {
                    CalculatorButton(fb: ButtonModel(label: num[1], color: .gray, function: emptyPlaceHolderFunction),
                                     screenWidth: screenWidth)
                    CalculatorButton(fb: ButtonModel(label: num[2], color: .gray, function: emptyPlaceHolderFunction),
                                     screenWidth: screenWidth)
                    CalculatorButton(fb: ButtonModel(label: num[3], color: .gray, function: emptyPlaceHolderFunction),
                                     screenWidth: screenWidth)
                }
                HStack {
                    CalculatorButton(fb: ButtonModel(label: num[4], color: .gray, function: emptyPlaceHolderFunction),
                                     screenWidth: screenWidth)
                    CalculatorButton(fb: ButtonModel(label: num[5], color: .gray, function: emptyPlaceHolderFunction),
                                     screenWidth: screenWidth)
                    CalculatorButton(fb: ButtonModel(label: num[6], color: .gray, function: emptyPlaceHolderFunction),
                                     screenWidth: screenWidth)
                }
                HStack {
                    CalculatorButton(fb: ButtonModel(label: num[7], color: .gray, function: emptyPlaceHolderFunction),
                                     screenWidth: screenWidth)
                    CalculatorButton(fb: ButtonModel(label: num[8], color: .gray, function: emptyPlaceHolderFunction),
                                     screenWidth: screenWidth)
                    CalculatorButton(fb: ButtonModel(label: num[9], color: .gray, function: emptyPlaceHolderFunction),
                                     screenWidth: screenWidth)
                }
                HStack {
                    CalculatorButton(fb: ButtonModel(label: ".", color: .secondary, function: emptyPlaceHolderFunction),
                                     screenWidth: screenWidth)
                    CalculatorButton(fb: ButtonModel(label: num[0], color: .gray, function: emptyPlaceHolderFunction),
                                     screenWidth: screenWidth)
                    CalculatorButton(fb: ButtonModel(label: ".", color: .secondary, function: emptyPlaceHolderFunction),
                                     screenWidth: screenWidth)
                }

            }
            VStack {
                CalculatorButton(fb: ButtonModel(label: op.add, color: .pink, function: emptyPlaceHolderFunction),
                                 screenWidth: screenWidth)
                CalculatorButton(fb: ButtonModel(label: op.sub, color: .pink, function: emptyPlaceHolderFunction),
                                 screenWidth: screenWidth)
                CalculatorButton(fb: ButtonModel(label: op.mult, color: .pink, function: emptyPlaceHolderFunction),
                                 screenWidth: screenWidth)
                CalculatorButton(fb: ButtonModel(label: op.div, color: .pink, function: emptyPlaceHolderFunction),
                                 screenWidth: screenWidth)
                CalculatorButton(fb: ButtonModel(label: op.eq, color: .pink, function: emptyPlaceHolderFunction),
                                 screenWidth: screenWidth)
            }
        }
    }
}

struct ButtonLayout_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLayout(screenWidth: UIScreen.main.bounds.width, buttonList: testList)
    }
}
