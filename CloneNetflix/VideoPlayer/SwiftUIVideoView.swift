//
//  SwiftUIVideoView.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/08/03.
//

import SwiftUI
import AVKit

struct SwiftUIVideoView: View {
    var url: URL
    private var player: AVPlayer {
        AVPlayer(url: url)
    }
    var body: some View {
        VideoPlayer(player: player)
    }
}

struct SwiftUIVideoView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIVideoView(url: exampleVideoURL)
    }
}
