//
//  SwiftUIVideoView.swift
//  StreamingMovie
//
//  Created by Prabagaran, Ganesan (G.) on 16/12/21.
//

import SwiftUI
import AVKit

struct SwiftUIVideoView: View {
    let url: URL
    
    private var player: AVPlayer {
        return AVPlayer(url: url)
    }
    
    var body: some View {
        VideoPlayer(player: player)
    }
}

struct SwiftUIVideoView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIVideoView(url: exampleVideoURL)
    }
}
