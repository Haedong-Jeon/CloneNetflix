//
//  TopMoviePreview.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/07/29.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount: Int = movie.cateogires.count
        if let index = movie.cateogires.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                HStack {
                    ForEach(movie.cateogires, id: \.self) { category in
                        HStack {
                            Text(category)
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                Text("row of buttons")
            }
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMoive6)
    }
}
