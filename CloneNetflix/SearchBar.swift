//
//  SearchBar.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/08/27.
//

import SwiftUI

struct SearchBar: View {
    @State private var text: String = ""
    var body: some View {
        ZStack(alignment: .leading) {
            Color.graySearchBackground
                .frame(width: 320, height: 36)
                .cornerRadius(8)
            
            HStack {
                Image(systemName:"magnifyingglass")
                    .foregroundColor(Color.graySearchText)
                    .padding(.leading, 10)

                TextField("Search", text: $text)
                    .background(Color.graySearchBackground)
                    .cornerRadius(8)
                    .foregroundColor(Color.white)
                    .padding(7)
                    .padding(.leading, -7)

                Button(action: {
                    //Clear Text
                }, label: {
                    Image(systemName:"xmark.circle.fill")
                        .foregroundColor(Color.graySearchText)
                        .frame(width:35, height: 35)
                })
                Button(action: {
                    //Clear Text, hide both buttons, give up first-responder
                }, label: {
                    Text("Cancel")
                        .foregroundColor(Color.white)
                })
                .padding(.trailing, 10)
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            SearchBar()
                .padding()
        }
    }
}
