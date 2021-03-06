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
    var genre: HomeGenre = .allGenre

    //movie detail view
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    // personalization
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisodeInfo: CurrentEpisodeInfo
    
    // cast
    var creator: String
    var cast: String
    
    var moreLikeThisMovies: [Movie]?
    
    var episode: [Episode]?
    var movieType: MovieType {
        if self.episode == nil {
            return .movie
        } else {
            return .tvShow
        }
    }
    var promotionHeadline: String?
    var trailers: [Trailer]
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
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
        }
    }
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisodeInfo.description
        }
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

enum MovieType {
    case movie
    case tvShow
}
