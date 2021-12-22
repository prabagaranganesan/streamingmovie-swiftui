//
//  MoreLikeThis.swift
//  StreamingMovie
//
//  Created by Prabagaran, Ganesan (G.) on 16/12/21.
//

import SwiftUI

struct MoreLikeThis: View {
    
    var movies: [Movie]
    var columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0..<movies.count) { index in
                    let movie = movies[index]
                    StandardHomeView(movie: movie)
                }
                Spacer()
            }
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies)
    }
}
