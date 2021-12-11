//
//  HomeVM.swift
//  StreamingMovie
//
//  Created by Prabagaran, Ganesan (G.) on 11/12/21.
//

import Foundation

class HomeVM: ObservableObject {
    
    @Published var movies: [String: [Movie]] = [:]
    
    var availableCategory: [String] {
        return movies.keys.map { String($0) }
    }
    
    func getMovies(for category: String) -> [Movie] {
        return movies[category] ?? []
    }
    
    init() {
        setupmovies()
    }
    
    func setupmovies() {
        movies["Watch It Again"] = exampleMovies
        movies["New Release"] = exampleMovies.shuffled()
        movies["Stand-up Comedy"] = exampleMovies.shuffled()
        movies["Trending now"] = exampleMovies.shuffled()
        movies["Sci-fi Comedy"] = exampleMovies.shuffled()
    }
}
