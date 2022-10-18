//
//  Modifiers.swift
//  DemoUIFirstTutorial
//
//  Created by LUIS ESCOBAR on 02/10/22.
//

import SwiftUI

struct Modifiers: View {
    var body: some View {
        Text("Hola mundo").font(.largeTitle)
            .foregroundColor(.blue).padding(.horizontal)
            .frame(width: 300, height: 100, alignment: .leading)
            .background(Color.gray)
    }
}

struct Modifiers_Previews: PreviewProvider {
    static var previews: some View {
        Modifiers()
    }
}
