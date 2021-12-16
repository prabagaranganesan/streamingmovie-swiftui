//
//  Episode.swift
//  StreamingMovie
//
//  Created by Prabagaran, Ganesan (G.) on 15/12/21.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID().uuidString
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var lenght: Int
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
