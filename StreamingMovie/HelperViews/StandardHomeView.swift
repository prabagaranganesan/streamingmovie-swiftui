//
//  StandardHomeView.swift
//  StreamingMovie
//
//  Created by Prabagaran, Ganesan (G.) on 10/12/21.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeView: View {
    var movie: Movie
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeView_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeView(movie: exampleMovie1)
            .frame(width: 200, height: 300)
        
    }
}
