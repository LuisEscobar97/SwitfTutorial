//
//  Navigations.swift
//  DemoUIFirstTutorial
//
//  Created by LUIS ESCOBAR on 20/10/22.
//

import SwiftUI

struct Navigations: View {
    var body: some View {
        
        NavigationView{
            
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline).toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button {
                                print("")                        }
                        label: {
                                Text("+")
                            }

                        }
                }
                NavigationLink("Hola otra vista",destination: TabViews())
                    
                
            }
            
            
            
        }
        
        
    }
}

struct Navigations_Previews: PreviewProvider {
    static var previews: some View {
        Navigations()
    }
}
