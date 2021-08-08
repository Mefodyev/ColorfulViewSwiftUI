//
//  ContentView.swift
//  ColorfulViewSwiftUI
//
//  Created by Alexey Mefodyev on 07.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)

    
    var body: some View {
        
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                ColorfulView(red: red, green: green, blue: blue)
                
                VStack {
                    SliderView(sliderValue: $red, color: .red)
                    SliderView(sliderValue: $green, color: .green)
                    SliderView(sliderValue: $blue, color: .blue)


                }
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

