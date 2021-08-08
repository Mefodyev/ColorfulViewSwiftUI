//
//  SliderTF.swift
//  ColorfulViewSwiftUI
//
//  Created by Alexey Mefodyev on 07.08.2021.
//

import SwiftUI

struct SliderTF: View {
    
    @Binding var value: Double
    @Binding var textValue: String
    @State private var showAlert: Bool = false
    
    var body: some View {
        TextField("", text: $textValue, onCommit: checkValue)
    }
}

extension SliderTF {
    private func checkValue() {
        if let value = Int(textValue), (0...Int(255.0)).contains(value) {
            self.value = Double(value)
        }  else {
            value = 0
            textValue = "0"
        }
    }
}

struct SliderTF_Previews: PreviewProvider {
    static var previews: some View {
        SliderTF(value: .constant(Double.random(in: 0...255.0)), textValue: .constant("123"))
    }
}
