//
//  GlobalHelper.swift
//  StreamingMovie
//
//  Created by Prabagaran, Ganesan (G.) on 10/12/21.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!
let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

var randomExampleImageURL: URL {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let trailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailURL: exampleImageURL)
let trailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailURL: exampleImageURL2)
let trailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailURL: exampleImageURL3)

let exampleTrailers = [trailer1, trailer2, trailer3]

let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 1,
                          defaultEpisodeInfo: exampleEpisodeInfo,
                          cast: "Louis Hofman, Oliver Masucci, jordis Tribei",
                          creators: "Baren bo Odan, Jantji Friese",
                          moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7], trailers: exampleTrailers)

let exampleMovie2 = Movie(id: UUID().uuidString,
                          name: "Travelers",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 2,
                          promotionHeadline: "Best Rated Show",
                          defaultEpisodeInfo: exampleEpisodeInfo,
                          cast: "Louis Hofman, Oliver Masucci, jordis Tribei",
                          creators: "Baren bo Odan, Jantji Friese", moreLikeThisMovies: [], trailers: exampleTrailers)
let exampleMovie3 = Movie(id: UUID().uuidString,
                          name: "Community",
                          thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 3,
                          defaultEpisodeInfo: exampleEpisodeInfo,
                          cast: "Louis Hofman, Oliver Masucci, jordis Tribei",
                          creators: "Baren bo Odan, Jantji Friese", moreLikeThisMovies: [], trailers: exampleTrailers)
let exampleMovie4 = Movie(id: UUID().uuidString,
                          name: "Alone",
                          thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 4,
                          promotionHeadline: "New episodes coming soon",
                          defaultEpisodeInfo: exampleEpisodeInfo,
                          cast: "Louis Hofman, Oliver Masucci, jordis Tribei",
                          creators: "Baren bo Odan, Jantji Friese", moreLikeThisMovies: [], trailers: exampleTrailers)
let exampleMovie5 = Movie(id: UUID().uuidString,
                          name: "Hannibal",
                          thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 5,
                          defaultEpisodeInfo: exampleEpisodeInfo,
                          cast: "Louis Hofman, Oliver Masucci, jordis Tribei",
                          creators: "Baren bo Odan, Jantji Friese", moreLikeThisMovies: [], trailers: exampleTrailers)
let exampleMovie6 = Movie(id: UUID().uuidString,
                          name: "After Life",
                          thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 6,
                          defaultEpisodeInfo: exampleEpisodeInfo,
                          cast: "Louis Hofman, Oliver Masucci, jordis Tribei",
                          creators: "Baren bo Odan, Jantji Friese", moreLikeThisMovies: [], trailers: exampleTrailers)

let exampleMovie7 = Movie(id: UUID().uuidString,
                           name: "After Life",
                           thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
                           categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"],
                           year: 2020,
                           rating: "TV-MA",
                           numberOfSeasons: 6,
                           defaultEpisodeInfo: exampleEpisodeInfo,
                           cast: "Louis Hofman, Oliver Masucci, jordis Tribei",
                           creators: "Baren bo Odan, Jantji Friese", moreLikeThisMovies: [], trailers: exampleTrailers)

var exampleMovies: [Movie] {
    return  [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}
let exampleEpisodeInfo = CurrentEpisodeInfo(episodeName: "Beginning and Ending", description: "Siz months after the disappearences, the police form a taskfor on 2052, Jonas learns that most of Winden perished in an apocalyptic event.", season: 2, episode: 1)

extension LinearGradient {
    static let blackOpacityGradient =  LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
}
