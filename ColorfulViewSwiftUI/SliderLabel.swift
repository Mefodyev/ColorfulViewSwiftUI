//
//  SliderLabel.swift
//  ColorfulViewSwiftUI
//
//  Created by Alexey Mefodyev on 07.08.2021.
//

import SwiftUI

struct SliderLabel: View {
    
    let value: Double
    
    
    var body: some View {
//        Text("\(value, specifier: "%0.0f")")
        Text("\(lround(value))")
    }
}

struct SliderLabel_Previews: PreviewProvider {
    static var previews: some View {
        SliderLabel(value: Double.random(in: 0...255.0))
    }
}
