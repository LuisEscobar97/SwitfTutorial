//
//  TabViews.swift
//  DemoUIFirstTutorial
//
//  Created by LUIS ESCOBAR on 20/10/22.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
        TabView{
        
            Text("pantalla 1").tabItem{
                Image(systemName: "house")
                Text("Home")
            }
            Text("pantalla 2").tabItem{
                Image(systemName: "moon")
                Text("Home")
            }
            Text("pantalla 3").tabItem{
                Image(systemName: "terminal")
                Text("Home")
            }
            
        }
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
