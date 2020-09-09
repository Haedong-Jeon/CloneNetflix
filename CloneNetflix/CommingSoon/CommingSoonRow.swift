//
//  CommingSoonRow.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/09/09.
//

import SwiftUI
import KingfisherSwiftUI
import AVKit

struct CommingSoonRow: View {
    var movie: Movie
    @Binding var movieDetailToShow: Movie?
    let screen = UIScreen.main.bounds
    var player: AVPlayer {
        AVPlayer(url: URL(string: "https://vt.tumblr.com/tumblr_o600t8hzf51qcbnq0_480.mp4")!)
    }
    var body: some View {
        VStack {
//            VideoPlayer(player: player)
            Color.blue
                .frame(height: 200)
            VStack {
                HStack {
                    KFImage(movie.thumbnailURL)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: screen.size.width / 3, height: 75)
                        .clipped()
                    Spacer()
                    Button(action: {
                        //remind me button
                    }, label: {
                        VStack(spacing: 6) {
                            Image(systemName: "bell")
                                .font(.title3)
                            Text("remind me")
                        }
                    })
                    .padding(.horizontal)
                    
                    Button(action: {
                        movieDetailToShow = movie
                    }, label: {
                        VStack(spacing: 6) {
                            Image(systemName: "info.circle")
                                .font(.title3)
                            Text("info")
                        }
                    })
                    .padding(.trailing, 24)
                }
                .font(.caption)
                
                VStack(alignment: .leading) {
                    Text(movie.name)
                        .font(.title2)
                        .bold()
                    Text(movie.episodeDescriptionDisplay)
                        .foregroundColor(.gray)
                        .font(.subheadline)
                }
            }
        }
        .foregroundColor(.white)
        .padding(.horizontal)
    }
}

struct CommingSoonRow_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CommingSoonRow(movie: exampleMoive1, movieDetailToShow: .constant(nil))
        }
    }
}
