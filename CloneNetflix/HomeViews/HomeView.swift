//
//  HomeView.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/07/29.
//

import SwiftUI

struct HomeView: View {
    var vm: HomeVM = HomeVM()
    let screen: CGRect = UIScreen.main.bounds
    @State private var movieDetailToShow: Movie? = nil
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                LazyVStack {//메인 VStack
                    TopRowButtons()
                    TopMoviePreview(movie: getRandomMovie())
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1)
                    
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(vm.getMovie(forCat: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                            .onTapGesture(perform: {
                                                movieDetailToShow = movie
                                            })
                                    }
                                }
                            }
                        }
                    }
                }
            }
            
            if movieDetailToShow != nil {
                MovieDetailView(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeInOut)
                    .transition(.opacity)
            }
        }
        .foregroundColor(.white)
    }
}



struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                //
            }, label: {
                Image("net_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
            })
            .buttonStyle(PlainButtonStyle())
            Spacer()
            Button(action: {
                //
            }, label: {
                Text("TV 프로그램")
            })
            .buttonStyle(PlainButtonStyle())
            Spacer()
            Button(action: {
                //
            }, label: {
                Text("영화")
            })
            .buttonStyle(PlainButtonStyle())
            Spacer()
            Button(action: {
                //
            }, label: {
                Text("내가 찜한 콘텐츠")
            })
            .buttonStyle(PlainButtonStyle())
            Spacer()
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
