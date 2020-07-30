//
//  Episode.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/07/30.
//

import Foundation

struct Episode: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
