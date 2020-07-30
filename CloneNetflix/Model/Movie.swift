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
    
    
    //movie detail view
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    var episode: [Episode]?
    var promotionHeadline: String?
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        
        return ""
    }
}
