//
//  MoreLikeThis.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/07/31.
//

import SwiftUI

struct MoreLikeThis: View {
    var movies: [Movie]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        LazyVGrid(columns: columns){
            ForEach(0..<movies.count) { index in
                StandardHomeMovie(movie: movies[index])
            }
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies1)
    }
}
