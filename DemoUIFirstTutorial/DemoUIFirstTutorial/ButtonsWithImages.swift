//
//  ButtonsWithImages.swift
//  DemoUIFirstTutorial
//
//  Created by LUIS ESCOBAR on 02/10/22.
//

import SwiftUI

struct ButtonsWithImages: View {
    var body: some View {
        VStack{
            Text("hola universe")
            Image("universe").resizable().aspectRatio( contentMode: .fit)
                .frame(width: 200, height: 200, alignment: .center)
            Image("universe").resizable().aspectRatio( contentMode: .fit)
                .frame(width: 200, height: 200, alignment: .center)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            Button(
                action: {print("boton con imagne")},
                label:{ Image("universe").resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 200, height: 200, alignment:
                                .center)
                
                
            })
            
        }
    }
}

struct ButtonsWithImages_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsWithImages()
    }
}
