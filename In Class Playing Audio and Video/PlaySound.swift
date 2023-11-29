//
//  PlaySound.swift
//  In Class Playing Audio and Video
//
//  Created by Eddington, Nick on 11/29/23.
//

import SwiftUI

struct PlaySound: View {
    @State var playAudio = true
    var body: some View {
        VStack{
            VStack{
                Text("Life finds a way... ")
               
            }
            .font(.largeTitle)
            .padding()
            Button(action: {
                if playAudio {
                    playSound(sound: "1JPark", type: "mp3")
                } else {
                    stopSound()
                }
                playAudio.toggle()
            }, label: {
                Image( systemName: playAudio ? "play.fill" : "stop")
            })
            .padding()
        }
    }
}

#Preview {
    PlaySound()
}

