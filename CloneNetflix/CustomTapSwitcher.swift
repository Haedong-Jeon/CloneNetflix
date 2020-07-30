//
//  CustomTapSwitcher.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/07/30.
//

import SwiftUI

struct CustomTapSwitcher: View {
    
    var taps: [CustomTab]
    @State private var currentTab: CustomTab = .episodes
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(taps, id: \.self) { tab in
                        VStack {
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(tab == currentTab ? Color.red : Color.clear)
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? Color.white : Color.gray)
                            })
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height: 30)

                        }
                    }
                }
            }
            switch currentTab {
                case .episodes:
                    Text("회차")
                case .trailers:
                    Text("예고 및 다른 영상")
                case .more:
                    Text("비슷한 콘텐츠")
            }
        }
        .foregroundColor(.white)
    }
}

struct CustomTapSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTapSwitcher(taps: [.episodes, .trailers, .more])
        }
    }
}

enum CustomTab: String {
    case episodes = "회차"
    case trailers = "예고편 및 다른 영상"
    case more = "비슷한 콘텐츠"
}
