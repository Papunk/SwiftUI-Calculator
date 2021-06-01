//
//  ContentView.swift
//  Calculator App
//
//  Created by Pedro Pagán on 5/6/21.
//

import SwiftUI

struct ContentView: View {
    @State var screenWidth = UIScreen.main.bounds.width
    @State var screenHeight = UIScreen.main.bounds.height
    
    @State var exp = Expression() // make this a string instead and see what happens
    
    var body: some View {
        VStack {
//            CalculatorDisplay(screenWidth: screenWidth, screenHeight: screenHeight, expression: $exp).padding()
            Text(exp.data.isEmpty ? "hello!" : exp.data)
                .frame(width: screenWidth - 15, height: screenHeight / 4, alignment: .center)
                .background(Color.gray.opacity(0.1))
                .font(Font.title).colorInvert()
                .clipShape(RoundedRectangle(cornerSize: CGSize.init(width: 35, height: 35)))
                .overlay(RoundedRectangle(cornerSize: .init(width: 35, height: 35)).stroke(lineWidth: 3)).colorInvert()
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            ButtonLayout(screenWidth: screenWidth, expression: $exp)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
