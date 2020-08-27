//
//  ContentView.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/07/29.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor.black
    }
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Image(systemName:"house")
                    Text("home")
                }.tag(0)
            Text("Search")
                .tabItem{
                    Image(systemName:"magnifyingglass")
                    Text("search")
                }.tag(1)
            Text("downloads")
                .tabItem{
                    Image(systemName:"arrow.down.to.line.alt")
                    Text("downloads")
                }.tag(2)
            Text("comming soon")
                .tabItem{
                    Image(systemName:"play.rectangle")
                    Text("comming soon")
                }.tag(3)
            Text("more")
                .tabItem{
                    Image(systemName:"equal")
                    Text("more")
                }.tag(4)
        }
        .accentColor(.white)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
