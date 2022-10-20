//
//  ZStackPadding.swift
//  DemoUIFirstTutorial
//
//  Created by LUIS ESCOBAR on 19/10/22.
//

import SwiftUI

struct ZStackPadding: View {
    var body: some View {
        ZStack {
            Color.yellow
            
           
            
            
            VStack(){
                Image("universe").resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 200, height: 200, alignment:
                                .center)
                
                Text("Bienvenidos al curso").padding(.bottom,6.0)
               
                Image("universe").resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 200, height: 200, alignment:
                                .center)
            }
        }.ignoresSafeArea()
    }
}

struct ZStackPadding_Previews: PreviewProvider {
    static var previews: some View {
        ZStackPadding()
    }
}
