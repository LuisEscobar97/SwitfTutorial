//
//  Players.swift
//  DemoUIFirstTutorial
//
//  Created by LUIS ESCOBAR on 20/10/22.
//

import SwiftUI
import AVKit

struct Players: View {
    @State var isPlayerActive:Bool = false
    var body: some View {
        NavigationView{
            VStack{
                Button(
                    action: {isPlayerActive = true},
                    label:{ ZStack {
                        
                        Image("universe").resizable()
                            .aspectRatio( contentMode: .fit)
                            .frame(width: 200, height: 200, alignment:
                                    .center)
                        Image(systemName: "play").foregroundColor(.white)
                    }
                    
                    
                })
                
                NavigationLink(destination:
                                VideoPlayer(player: AVPlayer(url: URL(string: "https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4")!)).frame(width: 420, height: 360, alignment: .center),
                               isActive: $isPlayerActive,
                               label: {
                    EmptyView()
                })
            }
        }
    }
}

struct Players_Previews: PreviewProvider {
    static var previews: some View {
        Players()
    }
}
