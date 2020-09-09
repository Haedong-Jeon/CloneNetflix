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
    var body: some View {
//        NavigationView {
            Group {
                ZStack {
                    Color.black
                        .edgesIgnoringSafeArea(.all)
                    ScrollView {
                        VStack {
                            NotificationBar(showNotificationList: $showNotificationBarList)
                            Text("For each loop of cells")
                        }
                    }
                    .foregroundColor(.white)
                }
            }
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
//    }
}

struct CommingSoon_Previews: PreviewProvider {
    static var previews: some View {
        CommingSoon()
    }
}
