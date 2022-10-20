//
//  HStackVStackSpacer.swift
//  DemoUIFirstTutorial
//
//  Created by LUIS ESCOBAR on 18/10/22.
//

import SwiftUI

struct HStackVStackSpacer: View {
    var body: some View {
        
        
        VStack(alignment: .trailing) {
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).border(Color.black)
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
            
            HStack{
                Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/).frame(width: 100, height: 100, alignment: .center)
                Text("Placeholder")
                Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)

            }
        }.border(Color.red)
        
    }
}

struct HStackVStackSpacer_Previews: PreviewProvider {
    static var previews: some View {
        HStackVStackSpacer()
    }
}
