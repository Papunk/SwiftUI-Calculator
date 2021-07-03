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
    
    @State var exp = ""
    
    // TODO: increase size of touch targets
    
    var body: some View {
        VStack {
            CalculatorDisplay(screenWidth: screenWidth, screenHeight: screenHeight, expression: $exp)
                .padding()
            ButtonLayout(screenWidth: screenWidth, expression: $exp)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
