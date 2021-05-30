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
    
    @State var expression = Expression()
    
    var body: some View {
        VStack {
            CalculatorDisplay(screenWidth: screenWidth, screenHeight: screenHeight).padding()
            ButtonLayout(screenWidth: screenWidth)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
