//
//  ToggleNotification.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 12/31/21.
//

import SwiftUI

struct ToggleNotification: View {
    @State private var notificationShown = true

    var body: some View {
        VStack {
            if self.notificationShown {
                NotificationView {
                    Text("Title")
                }
            }
            
            VStack {
                Spacer()
                
                Button("toggle") {
                    self.notificationShown.toggle()
                }
                
                Spacer()
                
            }
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color(red: 0, green: 1, blue: 1))
            .edgesIgnoringSafeArea(.all)
    }
}

struct ToggleNotification_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach([ /* "iPhone 8",
             "iPhone 12 Mini", */
            "iPhone 12 Pro Max",
            ], id: \.self) { deviceName in
                ToggleNotification()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .previewDisplayName(deviceName)
            }
        }
    }
}
