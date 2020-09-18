//
//  DownloadsView.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/09/18.
//

import SwiftUI

struct DownloadsView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Image(systemName:"info.cirlce")
                    Text("smart Downloads")
                    Text("ON")
                        .foregroundColor(.blue)
                    
                    Spacer()
                }
                .padding()
                .font(.system(size: 18, weight: .bold))
                
                ZStack {
                    Circle()
                        .foregroundColor(.graySearchBackground)
                        .padding(.horizontal, 100)
                    
                    Image(systemName: "arrow.down.to.line.alt")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75)
                        .foregroundColor(.gray)
                }
                .frame(height: 275)
                .padding(.top, 75)
                
                VStack(spacing: 20) {
                   Text("Never without netflix")
                    .font(.title2)
                    .bold()
                    
                    Text("Download shows and movies so you will never be without something to watch \n -- even when you are offline")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 50)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("See what you can download")
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.white)
                    })
                }
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct DownloadsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            DownloadsView()
        }
    }
}
