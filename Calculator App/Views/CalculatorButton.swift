//
//  CalculatorButton.swift
//  Calculator App
//
//  Created by Pedro Pagán on 5/6/21.
//

import SwiftUI

struct CalculatorButton: View {
    var fb: ButtonModel
    var screenWidth: CGFloat
    var function: () -> Void
    
    var body: some View {
        Button(action: function) {
            ZStack {
                // empty imageName results in text button and vice versa
                Image(systemName: fb.imageName ?? "")
                Text(fb.label ?? "")
                    .font(Font.custom("Avenir", size: 32))
                    .fontWeight(.medium)
            }
        }
        .padding()
        .frame(width: screenWidth / 4 - 10, height: screenWidth / 4 - 10)
        .font(.title)
        .background(
            RadialGradient(
                gradient: Gradient(colors: [fb.color, Color.white]),
                center: .bottom,
                startRadius: 0,
                endRadius: 450
            )
        )
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerSize: .init(width: 20, height: 20)))
        .overlay(RoundedRectangle(cornerSize: .init(width: 20, height: 20)).stroke(lineWidth: 2).colorInvert())
        .shadow(radius: 10, x: 0, y: 10)
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(fb: NumberButton(label: numbers[3], color: Color.pink), screenWidth: 400, function: {})
    }
}
