//
//  PlayVideo.swift
//  In Class Playing Audio and Video
//
//  Created by Eddington, Nick on 11/29/23.
//

import SwiftUI
import AVKit

struct PlayVideo: View {
    @State var player: AVPlayer?
    var body: some View {
        VideoPlayer(player: player, videoOverlay: {
            VStack{
                Spacer()
                Text("Turtle!")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .background(.black)
                Spacer()
                Spacer()
                Spacer()

            }
        })
            .onAppear {
                guard let videoURL = Bundle.main.url(forResource: "Turtle", withExtension: "mp4") else {
                    print ("Video file not found")
                    return
                }
                player = AVPlayer(url: videoURL as URL)
            }
    }
}

#Preview {
    PlayVideo()
}

