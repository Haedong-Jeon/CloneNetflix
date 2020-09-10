//
//  CommingSoon.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/09/09.
//

import SwiftUI

struct CommingSoon: View {
    @State private var showNotificationBarList: Bool = false
    @State private var navBarHidden: Bool = true
    @State private var movieDetailToShow: Movie? = nil
    @State private var scrollOffset: CGFloat = 0.0
    @State private var activeIndex: Int = 0
    @ObservedObject var vm: CommingSoonVM = CommingSoonVM()
   
    func updateActiveIndex(fromScroll scroll: CGFloat) {
        if scroll < 105 {
            activeIndex = 0
        } else {
            let remove105 = scroll - 105
            let active = Int(remove105 / 410) + 1
            activeIndex = Int(active)
        }
    }
    var body: some View {
//        NavigationView {
        let movies = vm.movies.enumerated().map({$0})
        let scrollTrackingBinding = Binding(get: {
            return scrollOffset
        }, set: { newVal in
            scrollOffset = newVal
            updateActiveIndex(fromScroll: newVal)
        })
            return Group {
                ZStack {
                    Color.black
                        .edgesIgnoringSafeArea(.all)
                    TrackableScrollView(.vertical, showIndicators: false, contentOffset: scrollTrackingBinding) {
                        LazyVStack {
                            NotificationBar(showNotificationList: $showNotificationBarList)
                            ForEach(Array(movies), id: \.offset) { index, movie in
                                CommingSoonRow(movie: movie, movieDetailToShow: $movieDetailToShow)
                                    .frame(height: 400)
                                    .overlay(
                                        Group {
                                            index == activeIndex ? Color.clear : Color.black.opacity(0.8)
                                        }
                                        .animation(.easeInOut)
                                    )
                            }
                        }
                    }
                    .foregroundColor(.white)
                    
                    NavigationLink(
                        destination: Text("notification List"),
                        isActive: $showNotificationBarList,
                        label: {
                            EmptyView()
                        })
                        .navigationBarTitle("")
                        .navigationBarHidden(navBarHidden)
                        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification), perform: { _ in
                            self.navBarHidden = true
                        })
                        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification), perform: { _ in
                            self.navBarHidden = false
                        })
                }
                }
            }
//    }
}

struct CommingSoon_Previews: PreviewProvider {
    static var previews: some View {
        CommingSoon()
    }
}
