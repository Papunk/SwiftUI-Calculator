//
//  ButtonModel.swift
//  Calculator App
//
//  Created by Pedro Pagán on 7/2/21.
//

import SwiftUI



// CONSTANTS



let add = "+", sub = "-", div = "÷", mult = "×", eq = "=", dot = ".", openingPar = "(", closingPar = ")"
var operators = [add, sub, div, mult]
var numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
// helper functions
func isNumber(_ s: String) -> Bool { numbers.contains(s) }
func isNumber(_ s: Character) -> Bool { isNumber(String(s)) }
func isOperator(_ s: String) -> Bool { operators.contains(s) }
func isOperator(_ s: Character) -> Bool { isOperator(String(s)) }



// PROTOCOLS



/**
 * The main class that defines the three main attributes of a button
 */
protocol ButtonModel {
    var label: String? { get }
    var imageName: String? { get }
    var color: Color { get }
    
    func modify(expression e: inout String)
}


// CLASSES


// TODO add validation to the types of buttons (i.e. ensure that number buttons are instantiatied with numbers)
// TODO have a makeButton() function that returns a button depending on the label?


/**
 * Models a button with a text label
 */
class LabelButton: ButtonModel {
    let label: String?
    let imageName: String? = nil
    let color: Color
    
    init(label: String, color: Color) {
        self.label = label
        self.color = color
    }
    
    func modify(expression e: inout String) {}
}

/**
 * Models a button with an image label
 */
class ImageButton: ButtonModel {
    let label: String? = nil
    let imageName: String?
    let color: Color
    
    init(imageName: String, color: Color) {
        self.imageName = imageName
        self.color = color
    }
    
    func modify(expression e: inout String) {}
}

// Useful buttons mapped to specific calculator functions

class NumberButton: LabelButton {
    
    override func modify(expression e: inout String) {
        e.append(label!) // numbers can be added reguardless of what was added before
    }
}

class OperatorButton: LabelButton {
    
    override func modify(expression e: inout String) {
        if let lastChar = e.last {
            let last = String(lastChar)
            if !last.isEmpty && !isOperator(last) && last != dot && last != openingPar {
                e.append(label!)
            }
        }
        
    }
}

class DotButton: LabelButton {
    
    override func modify(expression e: inout String) {
        if e.isEmpty {
            e.append(numbers[0] + dot)
            return
        }
        
        var last = String(e.last!)
        
        if last == closingPar {
            e.append(mult)
            last = mult
        }
        if isOperator(last) || last == openingPar {
            e.append(numbers[0])
            last = numbers[0]
        }
        
        e.append(dot)
    }
}

class ParButton: LabelButton {
    
    static var bracketStack: UInt = 0 // the stack can only hold positive values and 0
    
    override func modify(expression e: inout String) {
        let stack = ParButton.bracketStack
        
        switch label {
        case openingPar: addOpeningPar(stack, &e)
        case closingPar: addClosingPar(stack, &e)
        default: break
        }
    }
    
    func addOpeningPar(_ s: UInt, _ e: inout String) {
        if let last = e.last {
            if String(last) == closingPar { e.append(mult) }
        }
        
        e.append(openingPar)
        ParButton.bracketStack += 1
    }
    func addClosingPar(_ s: UInt, _ e: inout String) {
        guard s > 0 else { return }
        guard !e.isEmpty else { return }
        guard String(e.last!) != dot else { return }
        
        e.append(closingPar)
        
        ParButton.bracketStack -= 1
    }
}

class EqualsButton: LabelButton {
    override func modify(expression e: inout String) {
        //TODO: parse and solve
        //Check that ParButton.bracketStack is 0
    }
}

class ClearButton: LabelButton {
    
    override func modify(expression e: inout String) {
        e = ""
    }
}














//struct ButtonModel {
//    let label: String
//    let imageName: String
//    let color: Color
//    // this is somewaht clumsy:
//    private var type: ButtonType {
//        get {
//            if num.contains(label) {
//                return .number
//            }
//            else if op.contains(label) {
//                return .operation
//            }
//            else if label == "." {
//                return .period
//            }
//            else if label == "=" {
//                return .equals
//            }
//            else if label == "C" {
//                return .clear
//            }
//            else {
//                return .glyph
//            }
//        }
//    }
//
//    init(label: String, color: Color) {
//        self.label = label
//        self.color = color
//        self.imageName = ""
//    }
//
//    init(imageName: String, color: Color) {
//        self.imageName = imageName
//        self.color = color
//        self.label = ""
//    }
//
//    func evaluate(_ statement: String) -> String? {
//        if statement.isEmpty {
//            return nil
//        }
//
//        let ending = String(statement.last!)
//        var newStatement = statement
//
//        switch type {
//        case .number, .operation:
//            if ending == ")" { newStatement.append(mult + self.label) }
//        case .period:
//            if ending != "." { newStatement.append(label) }
//        case .clear:
//            newStatement = ""
//        case .equals:
//            // compute statement
//            break
//        case .glyph:
//            break
//        }
//
//        return newStatement
//    }
//}
