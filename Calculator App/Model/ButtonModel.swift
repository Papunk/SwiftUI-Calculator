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

func isNumber(_ s: String) -> Bool { numbers.contains(s) }
func isNumber(_ s: Character) -> Bool { isNumber(String(s)) }
func isOperator(_ s: String) -> Bool { operators.contains(s) }
func isOperator(_ s: Character) -> Bool { isOperator(String(s)) }


// PROTOCOLS


protocol ButtonModel {
    var label: String? { get }
    var imageName: String? { get }
    var color: Color { get }
}
protocol ActionButton: ButtonModel {}
protocol DisplayButton: ButtonModel { func modify(expression: inout String) }


// STRUCTS


struct NumberButton: DisplayButton {
    let label: String?
    let imageName: String? = nil
    let color: Color
    
    func modify(expression e: inout String) {
        e.append(label!) // numbers can be added reguardless of what was added before
    }
}

struct OperatorButton: DisplayButton {
    let label: String?
    let imageName: String? = nil
    let color: Color
    
    func modify(expression e: inout String) {
        let last = String(e.last!)
        
        if !last.isEmpty && !isOperator(last) && last != dot && last != openingPar {
            e.append(label!)
        }
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
