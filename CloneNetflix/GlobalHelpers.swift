//
//  GlobalHelpers.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/07/29.
//

import Foundation

let exampleMoive1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, cateogires: ["디스토피아", "암울", "긴장감", "SF"] )
let exampleMoive2 = Movie(id: UUID().uuidString, name: "Travelers", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, cateogires: ["디스토피아", "암울","긴장감", "SF"] )
let exampleMoive3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, cateogires: ["디스토피아", "암울","긴장감", "SF"] )
let exampleMoive4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, cateogires: ["디스토피아", "암울","긴장감", "SF"])
let exampleMoive5 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, cateogires: ["디스토피아", "암울","긴장감", "SF"])
let exampleMoive6 = Movie(id: UUID().uuidString, name: "AfterLife", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, cateogires: ["디스토피아", "암울","긴장감", "SF"])

let exampleMovies: [Movie] = [exampleMoive1, exampleMoive2, exampleMoive3, exampleMoive4, exampleMoive5, exampleMoive6]
