//  HomeVM.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/07/29.
//

import Foundation

class HomeVM: ObservableObject {
    //String == 카테고리
    @Published var movies: [String: [Movie]] = [:]
    public var allCategories: [String] {
        movies.keys.map {String($0)}
    }
    public var allGenres: [HomeGenre] = [.allGenre, .action, .comedy, .horror, .thriller]
    
    public func getMovie(forCat cat: String, andHomeRow homeRow: HomeTopRow, andGenre genre: HomeGenre) -> [Movie] {
        switch homeRow {
            case .home:
                return movies[cat] ?? []
            case .movies:
                return (movies[cat] ?? []).filter({($0.movieType == .movie) && ($0.genre = genre)})
            case .tvShows:
                return (movies[cat] ?? []).filter({($0.movieType == .tvShow) && ($0.genre = genre)})
            case .myList:
                //TODO: - setup mylist
                return movies[cat] ?? []
        }
        
    }
    init() {
        setupMovies()
    }
    func setupMovies() {
        movies["내가 찜한 콘텐츠"] = exampleMovies1
        movies["지금 뜨는 콘텐츠"] = exampleMovies1.shuffled()
        movies["TV 프로그램 음모"] = exampleMovies1.shuffled()
        movies["미국 TV 프로그램 수상작"] = exampleMovies1.shuffled()
        movies["다시보기 추천 콘텐츠"] = exampleMovies1.shuffled()
        movies["Netflix 오리지널"] = exampleMovies1.shuffled()
    }
}
