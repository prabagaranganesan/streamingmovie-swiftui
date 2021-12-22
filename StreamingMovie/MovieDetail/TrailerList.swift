//
//  TrailerList.swift
//  StreamingMovie
//
//  Created by Prabagaran, Ganesan (G.) on 16/12/21.
//

import SwiftUI

struct TrailerList: View {
    var trailers: [Trailer]
    
    var screen = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            ForEach(trailers) { trailer in
                VStack(alignment: .leading) {
                    VideoPreviewImage(imageURL: trailer.thumbnailURL, videoURL: trailer.videoURL)
                        .frame(maxWidth: screen.width)
                    Text(trailer.name)
                        .font(.headline)
                }
                .foregroundColor(.white)
               
            }
        }
    }
}

struct TrailerList_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            TrailerList(trailers: exampleTrailers)
        }
    }
}
