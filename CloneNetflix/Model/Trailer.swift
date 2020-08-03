//
//  Trailer.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/08/03.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
