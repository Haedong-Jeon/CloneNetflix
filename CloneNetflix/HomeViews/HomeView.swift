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
    
    @State private var topRowSelection: HomeTopRow = .home
    @State private var homeGenre: HomeGenre = .allGenre
    
    @State private var showGenreSelection = false
    @State private var showTopRowSelection = false
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                LazyVStack {//메인 VStack
                    TopRowButtons(topRowSelection: $topRowSelection, homeGenre: $homeGenre, showGenreSelection: $showGenreSelection, showTopSelection: $showTopRowSelection)
                    TopMoviePreview(movie: getRandomMovie())
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1)
                    
                    homeStack(vm: vm, topRowSelection: topRowSelection, selectedGenre: homeGenre, movieDetailToShow: $movieDetailToShow)
                }
            }
            if movieDetailToShow != nil {
                MovieDetailView(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeInOut)
                    .transition(.opacity)
            }
            if showTopRowSelection {
                Group {
                    Color.black.opacity(0.9)
                    VStack(spacing: 40) {
                        Spacer()
                        ForEach(HomeTopRow.allCases, id: \.self) { topRow in
                            Button(action: {
                                topRowSelection = topRow
                                showTopRowSelection = false
                            }, label: {
                                if topRow == topRowSelection {
                                    Text("\(topRow.rawValue)")
                                        .bold()
                                } else {
                                    Text("\(topRow.rawValue)")
                                        .foregroundColor(.gray)
                                }
                            })
                        }
                        Spacer()
                        Button(action: {
                           showTopRowSelection = false
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.system(size: 40))
                        })
                        .padding(.bottom, 30)
                    }
                }
                .edgesIgnoringSafeArea(.all)
                .font(.title2)
            }
            if showGenreSelection {
                Group {
                    Color.black.opacity(0.9)
                    
                    VStack(spacing: 40) {
                        Spacer()
                        ScrollView {
                            ForEach(vm.allGenres, id: \.self) { genre in
                                Button(action: {
                                    homeGenre = genre
                                    showGenreSelection = false
                                }, label: {
                                    if genre == homeGenre{
                                        Text("\(genre.rawValue)")
                                            .bold()
                                    } else {
                                        Text("\(genre.rawValue)")
                                            .foregroundColor(.gray)
                                    }
                                })
                                .padding(.bottom, 40)
                            }
                        }
                        Spacer()
                        Button(action: {
                            showGenreSelection = false
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.system(size: 40))
                        })
                        .padding(.bottom, 30)
                    }
                }
                .edgesIgnoringSafeArea(.all)
                .font(.title2)
            }

        }
        .foregroundColor(.white)
    }
}

struct TopRowButtons: View {
    @Binding var topRowSelection: HomeTopRow
    @Binding var homeGenre: HomeGenre
    
    @Binding var showGenreSelection: Bool
    @Binding var showTopSelection: Bool

    var body: some View {
        switch topRowSelection {
            case .home:
                HStack {
                    Button(action: {
                        topRowSelection = .home
                    }, label: {
                        Image("net_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35)
                    })
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(action: {
                        topRowSelection = .tvShows
                    }, label: {
                        Text("TV 프로그램")
                    })
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(action: {
                        topRowSelection = .movies
                    }, label: {
                        Text("say anything")
                        Text("영화")
                    })
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                    Button(action: {
                        topRowSelection = .myList
                    }, label: {
                        Text("내가 찜한 콘텐츠")
                    })
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                }
                .padding(.leading, 10)
                .padding(.trailing, 30)
            case .myList, .tvShows, .movies:
                HStack {
                    Button(action: {
                        topRowSelection = .home
                    }, label: {
                        Image("net_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35)
                    })
                    .buttonStyle(PlainButtonStyle())
                    HStack(spacing: 20) {
                        Button(action: {
                            showTopSelection = true
                        }, label: {
                            HStack {
                                Text(topRowSelection.rawValue)
                                    .font(.system(size: 18))
                                Image(systemName: "triangle.fill")
                                    .font(.system(size: 10))
                                    .rotationEffect(.degrees(180), anchor: .center)
                            }
                        })
                        .buttonStyle(PlainButtonStyle())
                        Button(action: {
                            showGenreSelection = true
                        }, label: {
                            HStack {
                                Text(homeGenre.rawValue)
                                    .font(.system(size: 15))
                                Image(systemName: "triangle.fill")
                                    .font(.system(size: 6))
                                    .rotationEffect(.degrees(180), anchor: .center)
                            }
                        })
                        .buttonStyle(PlainButtonStyle())
                    }
                    Spacer()
                }
                .padding(.leading, 30)
                .padding(.trailing, 30)
            }
        }
}
enum HomeTopRow: String, CaseIterable {
    case home = "Home"
    case tvShows = "TV Shows"
    case movies = "Movies"
    case myList = "My List"
}
enum HomeGenre: String {
    case allGenre
    case action
    case comedy
    case horror
    case tvShow
    case thriller
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

