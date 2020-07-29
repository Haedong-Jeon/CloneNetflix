//
//  GlobalHelpers.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/07/29.
//

import Foundation
import SwiftUI

let exampleMoive1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://terrigen-cdn-dev.marvel.com/content/prod/1x/avengersendgame_lob_crd_05.jpg")!, cateogires: ["디스토피아", "암울", "긴장감", "SF"] )
let exampleMoive2 = Movie(id: UUID().uuidString, name: "Travelers", thumbnailURL: URL(string: "https://miro.medium.com/max/575/0*2ukpnHk5O-GjKg3o")!, cateogires: ["디스토피아", "암울","긴장감", "SF"] )
let exampleMoive3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/movie-poster-template-design-21a1c803fe4ff4b858de24f5c91ec57f_screen.jpg?ts=1574144362")!, cateogires: ["디스토피아", "암울","긴장감", "SF"] )
let exampleMoive4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://images-na.ssl-images-amazon.com/images/I/71rNJQ2g-EL._AC_SL1178_.jpg")!, cateogires: ["디스토피아", "암울","긴장감", "SF"])
let exampleMoive5 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string: "https://lh3.googleusercontent.com/proxy/z9_WpzZrhg3GzqneZ8dzfCEEc0F2SrPkUasa5SKRa3smxEDNoPaXp9Rlmcvm1qTy5Kwc360dcdt4hxU4qeO0oA_swgg5N2K6lw")!, cateogires: ["디스토피아", "암울","긴장감", "SF"])
let exampleMoive6 = Movie(id: UUID().uuidString, name: "AfterLife", thumbnailURL: URL(string: "https://www.trendsinternational.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/p/rp18436-1.jpg")!, cateogires: ["디스토피아", "암울","긴장감", "SF"])

let exampleMovies: [Movie] = [exampleMoive1, exampleMoive2, exampleMoive3, exampleMoive4, exampleMoive5, exampleMoive6]

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0),Color.black.opacity(0.95)]),startPoint: .top,endPoint: .bottom)
}
