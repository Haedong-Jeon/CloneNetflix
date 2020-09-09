//
//  NotificationBar.swift
//  CloneNetflix
//
//  Created by 전해동 on 2020/09/09.
//

import SwiftUI

struct NotificationBar: View {
    @Binding var showNotificationList: Bool
    
    var body: some View {
        Button(action: {
            showNotificationList = true
        }, label: {
            HStack {
                Image(systemName: "bell")
                Text("Notification")
                    .bold()
                Spacer()
                Image(systemName: "chaveron.right")
            }
            .font(.system(size: 18, weight: .bold))
        })
        .foregroundColor(.white)
        .padding()
    }
}

struct NotificationBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            NotificationBar(showNotificationList:  .constant(false))
        }
    }
}
