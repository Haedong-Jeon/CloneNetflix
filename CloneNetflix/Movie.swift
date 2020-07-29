//
//  Movie.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/07/29.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var cateogires: [String]
}
