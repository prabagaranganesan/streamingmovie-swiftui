//
//  GlobalHelper.swift
//  StreamingMovie
//
//  Created by Prabagaran, Ganesan (G.) on 10/12/21.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 1,
                          defaultEpisodeInfo: exampleEpisodeInfo,
                          cast: "Louis Hofman, Oliver Masucci, jordis Tribei",
                          creators: "Baren bo Odan, Jantji Friese")

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
                          creators: "Baren bo Odan, Jantji Friese")
let exampleMovie3 = Movie(id: UUID().uuidString,
                          name: "Community",
                          thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 3,
                          defaultEpisodeInfo: exampleEpisodeInfo,
                          cast: "Louis Hofman, Oliver Masucci, jordis Tribei",
                          creators: "Baren bo Odan, Jantji Friese")
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
                          creators: "Baren bo Odan, Jantji Friese")
let exampleMovie5 = Movie(id: UUID().uuidString,
                          name: "Hannibal",
                          thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 5,
                          defaultEpisodeInfo: exampleEpisodeInfo,
                          cast: "Louis Hofman, Oliver Masucci, jordis Tribei",
                          creators: "Baren bo Odan, Jantji Friese")
let exampleMovie6 = Movie(id: UUID().uuidString,
                          name: "After Life",
                          thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 6,
                          defaultEpisodeInfo: exampleEpisodeInfo,
                          cast: "Louis Hofman, Oliver Masucci, jordis Tribei",
                          creators: "Baren bo Odan, Jantji Friese")

let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]
let exampleEpisodeInfo = CurrentEpisodeInfo(episodeName: "Beginning and Ending", description: "Siz months after the disappearences, the police form a taskfor on 2052, Jonas learns that most of Winden perished in an apocalyptic event.", season: 2, episode: 1)

extension LinearGradient {
    static let blackOpacityGradient =  LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
}
