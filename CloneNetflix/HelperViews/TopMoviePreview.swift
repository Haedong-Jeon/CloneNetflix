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
                                .font(.footnote)
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "내가 찜한 콘텐츠", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //MARK: - 재생목록에 추가하기
                    }
                    Spacer()
                    PlayButton(text: "재생", imageName: "play.fill") {
                        //MARK: - 재생
                    }
                    .frame(width: 120)
                    Spacer()
                    SmallVerticalButton(text: "정보", isOnImage: "info.circle", isOffImage: "plus", isOn: true) {
                        //MARK: - 상세 정보 표시하기
                    }
                    Spacer()
                }
            }
            .background(
                LinearGradient.blackOpacityGradient
                .padding(.top, 300)
            )
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMoive6)
    }
}
