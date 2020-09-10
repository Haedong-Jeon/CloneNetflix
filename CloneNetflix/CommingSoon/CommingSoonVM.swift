//
//  CommingSoonVM.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/09/10.
//

import Foundation

class CommingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = exampleMovies1
    }
}
