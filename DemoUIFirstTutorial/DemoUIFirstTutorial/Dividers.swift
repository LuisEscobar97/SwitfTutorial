//
//  Dividers.swift
//  DemoUIFirstTutorial
//
//  Created by LUIS ESCOBAR on 17/10/22.
//

import SwiftUI

struct Dividers: View {
    var body: some View {
        VStack {
            Circle().frame(width: 100, height: 100, alignment: .center)
            
            Text("Circulo negro")
            Divider()
            Rectangle().frame(width: 200, height: 100, alignment: .center).foregroundColor(.blue)
            
            Text("Un rectangulo")
        }
    }
}

struct Dividers_Previews: PreviewProvider {
    static var previews: some View {
        Dividers()
    }
}
