//
//  GlobalHelpers.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/07/29.
//

import Foundation
import SwiftUI

let exampleMoive1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://terrigen-cdn-dev.marvel.com/content/prod/1x/avengersendgame_lob_crd_05.jpg")!, cateogires: ["디스토피아", "암울", "긴장감", "SF"], year: 2020, rating: "TV-MA", numberOfSeasons: 1,defaultEpisodeInfo: exampleEpisodeInfo1, creator: "김개똥", cast: "김아무개, 박아무개, 나아무개" )
let exampleMoive2 = Movie(id: UUID().uuidString, name: "Travelers", thumbnailURL: URL(string: "https://miro.medium.com/max/575/0*2ukpnHk5O-GjKg3o")!, cateogires: ["디스토피아", "암울","긴장감", "SF"], year: 2020, rating: "TV-MA", numberOfSeasons: 3 , defaultEpisodeInfo: exampleEpisodeInfo2,creator: "즌중징", cast: "홍아무개, 박아무개, 감감감", promotionHeadline: "Watch Season 3 now")
let exampleMoive3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/movie-poster-template-design-21a1c803fe4ff4b858de24f5c91ec57f_screen.jpg?ts=1574144362")!, cateogires: ["디스토피아", "암울","긴장감", "SF"],  year: 2020, rating: "TV-MA", numberOfSeasons: 5, defaultEpisodeInfo: exampleEpisodeInfo3, creator: "박뿌빠", cast: "김아무개, 신아무개, 전아무개"  )
let exampleMoive4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://images-na.ssl-images-amazon.com/images/I/71rNJQ2g-EL._AC_SL1178_.jpg")!, cateogires: ["디스토피아", "암울","긴장감", "SF"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, defaultEpisodeInfo: exampleEpisodeInfo4, creator: "강진진", cast: "나아무개, 홍길동, 느느느"  )
let exampleMoive5 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string: "https://lh3.googleusercontent.com/proxy/z9_WpzZrhg3GzqneZ8dzfCEEc0F2SrPkUasa5SKRa3smxEDNoPaXp9Rlmcvm1qTy5Kwc360dcdt4hxU4qeO0oA_swgg5N2K6lw")!, cateogires: ["디스토피아", "암울","긴장감", "SF"],  year: 2020, rating: "TV-MA", numberOfSeasons: 3 , defaultEpisodeInfo: exampleEpisodeInfo5,creator: "홍길동", cast: "감아무개, 박아무개, 최아무개, 나아무개", promotionHeadline: "new episode")
let exampleMoive6 = Movie(id: UUID().uuidString, name: "AfterLife", thumbnailURL: URL(string: "https://www.trendsinternational.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/p/rp18436-1.jpg")!, cateogires: ["디스토피아", "암울","긴장감", "SF"],  year: 2020, rating: "TV-MA" , numberOfSeasons: 2, defaultEpisodeInfo: exampleEpisodeInfo6, creator: "장빙봉", cast: "홍아무개, 최아무개, 이아무개, 나아무개, 박아무개", promotionHeadline: "Watch Season6 now" )

let exampleMovies: [Movie] = [exampleMoive1, exampleMoive2, exampleMoive3, exampleMoive4, exampleMoive5, exampleMoive6]
let exampleEpisodeInfo1: CurrentEpisodeInfo = CurrentEpisodeInfo(episodeName: "에피소드 1", description: "어쩌고 저쩌고 블라블라블라 내용 소개 가나다라마바사 아자차카타파하 그느드르 으즈츠츠블라블라 수리수리 마수리 웅앵잉앙킹챵챙총응지양지 부시 롸롸롸 음빠빠 움빠빠빠빠빠빠 기비비비그브그브 챙챙 구루구루 므브브브 우끼끼 촵촵 우끼우끼 블르 촵촵", season: 1, episode: 1)
let exampleEpisodeInfo2: CurrentEpisodeInfo = CurrentEpisodeInfo(episodeName: "에피소드 1", description: "어쩌고 저쩌고 블라블라블라 내용 소개 가나다라마바사 아자차카타파하 그느드르 으즈츠츠블라블라 수리수리 마수리 웅앵잉앙킹챵챙총응지양지 부시 롸롸롸 음빠빠 움빠빠빠빠빠빠 기비비비그브그브 챙챙 구루구루 므브브브 우끼끼 촵촵 우끼우끼 블르 촵촵", season: 3, episode: 1)
let exampleEpisodeInfo3: CurrentEpisodeInfo = CurrentEpisodeInfo(episodeName: "에피소드 1", description: "어쩌고 저쩌고 블라블라블라 내용 소개 가나다라마바사 아자차카타파하 그느드르 으즈츠츠블라블라 수리수리 마수리 웅앵잉앙킹챵챙총응지양지 부시 롸롸롸 음빠빠 움빠빠빠빠빠빠 기비비비그브그브 챙챙 구루구루 므브브브 우끼끼 촵촵 우끼우끼 블르 촵촵", season: 5, episode: 1)
let exampleEpisodeInfo4: CurrentEpisodeInfo = CurrentEpisodeInfo(episodeName: "에피소드 1", description: "어쩌고 저쩌고 블라블라블라 내용 소개 가나다라마바사 아자차카타파하 그느드르 으즈츠츠블라블라 수리수리 마수리 웅앵잉앙킹챵챙총응지양지 부시 롸롸롸 음빠빠 움빠빠빠빠빠빠 기비비비그브그브 챙챙 구루구루 므브브브 우끼끼 촵촵 우끼우끼 블르 촵촵", season: 2, episode: 1)
let exampleEpisodeInfo5: CurrentEpisodeInfo = CurrentEpisodeInfo(episodeName: "에피소드 1", description: "어쩌고 저쩌고 블라블라블라 내용 소개 가나다라마바사 아자차카타파하 그느드르 으즈츠츠블라블라 수리수리 마수리 웅앵잉앙킹챵챙총응지양지 부시 롸롸롸 음빠빠 움빠빠빠빠빠빠 기비비비그브그브 챙챙 구루구루 므브브브 우끼끼 촵촵 우끼우끼 블르 촵촵", season: 3, episode: 1)
let exampleEpisodeInfo6: CurrentEpisodeInfo = CurrentEpisodeInfo(episodeName: "에피소드 1", description: "어쩌고 저쩌고 블라블라블라 내용 소개 가나다라마바사 아자차카타파하 그느드르 으즈츠츠블라블라 수리수리 마수리 웅앵잉앙킹챵챙총응지양지 부시 롸롸롸 음빠빠 움빠빠빠빠빠빠 기비비비그브그브 챙챙 구루구루 므브브브 우끼끼 촵촵 우끼우끼 블르 촵촵", season: 2, episode: 1)



func getRandomMovie() -> Movie {
    let exampleMovieNum: Int = Int.random(in: 1 ... 5)
    switch exampleMovieNum {
        case 1:
            return exampleMoive1
        case 2:
            return exampleMoive2
        case 3:
            return exampleMoive3
        case 4:
            return exampleMoive4
        case 5:
            return exampleMoive5
        case 6:
            return exampleMoive6
        default:
            return exampleMoive1
    }
}

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0),Color.black.opacity(0.95)]),startPoint: .top,endPoint: .bottom)
}

