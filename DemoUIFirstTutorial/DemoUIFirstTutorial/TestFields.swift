//
//  TestFields.swift
//  DemoUIFirstTutorial
//ª
//  Created by LUIS ESCOBAR on 17/10/22.
//

import SwiftUI

struct TestFields: View {
    
   @State var textoVista: String = ""
    
    var body: some View {
        
        VStack {
            Text(textoVista)
            
            TextField("Escibe Constraseña", text: $textoVista)
            
            Button(action: {textoVista = "Luis"}, label: {
                Text("Cambia el texto de la vista")
            }
            )
        }
        
        
    }
}

struct TestFields_Previews: PreviewProvider {
    static var previews: some View {
        TestFields()
    }
}
