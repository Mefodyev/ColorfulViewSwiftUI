//
//  SliderView.swift
//  ColorfulViewSwiftUI
//
//  Created by Alexey Mefodyev on 07.08.2021.
//

import SwiftUI


struct SliderView: View {
    
//    @State private var sliderRange = 0...255.0
//    @State private var sliderValue = 0.5
//    @State private var textfieldValue = "0.5"
//    @State var labelValue = 100.0

//    свойство binding нужно для связывания свойства с другим вью
    @Binding var sliderValue: Double
    @State private var textValue = ""
    var color: Color
    

    
    var body: some View {
        HStack {
            
            Text("\(sliderValue, specifier: "%0.0f")")
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .frame(width: UIScreen.main.bounds.width - 120)
                .accentColor(color)
                .onChange(of: sliderValue, perform: { value in
                    textValue = "\(lround(sliderValue))"
                })
            SliderTF(value: $sliderValue, textValue: $textValue)
        }.padding().multilineTextAlignment(.trailing)
        
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderValue: .constant(100), color: .red)
    }
}
