//
//  ColorfulView.swift
//  ColorfulViewSwiftUI
//
//  Created by Alexey Mefodyev on 07.08.2021.
//

import SwiftUI

struct ColorfulView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    
    
    var body: some View {
        Color(red: red/255, green: green/255, blue: blue/255)
            .cornerRadius(30)
            .frame(width: UIScreen.main.bounds.width - 40, height: 200)
            .overlay(RoundedRectangle(cornerRadius: 30, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/).stroke(Color.pink, lineWidth: 4))
            
    }
    
}

struct ColorfulView_Previews: PreviewProvider {
    static var previews: some View {
        ColorfulView(red: 200, green: 200, blue: 100)
    }
}
