//
//  Trailer.swift
//  StreamingMovie
//
//  Created by Prabagaran, Ganesan (G.) on 16/12/21.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    
    let id = UUID().uuidString
    let name: String
    let videoURL: URL
    let thumbnailURL: URL
}
