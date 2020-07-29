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
    public func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    init() {
        setupMovies()
    }
    func setupMovies() {
        movies["trending now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()

    }
}
