//
//  homeStack.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/08/25.
//

import Foundation
import SwiftUI

struct homeStack: View {
    var vm: HomeVM
    var topRowSelection: HomeTopRow
    @Binding var movieDetailToShow: Movie? 
    var body: some View {
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
                        ForEach(vm.getMovie(forCat: category, andHomeRow: topRowSelection)) { movie in
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

struct homeStack_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                homeStack(vm: HomeVM(), topRowSelection: .home, movieDetailToShow: .constant(nil))
            }
            .foregroundColor(.white)
        }
    }
}
