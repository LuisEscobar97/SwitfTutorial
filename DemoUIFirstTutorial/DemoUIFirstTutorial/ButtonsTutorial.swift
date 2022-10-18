//
//  ButtonsTutorial.swift
//  DemoUIFirstTutorial
//
//  Created by LUIS ESCOBAR on 02/10/22.
//

import SwiftUI

struct ButtonsTutorial: View {
    var body: some View {
        VStack{
            Button("Mi primer boton", action: {
                print("mi primer buton")
                
            })
            Button("Mi segundo buton"){
                print("mi segu7ndo buton")
            }
            Button(action: {
                print("hola con el buton con label")
                
            },
                   label: {
                Text("Button con label como argumento")
            })
        }
     
    }
}

struct ButtonsTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsTutorial()
    }
}
