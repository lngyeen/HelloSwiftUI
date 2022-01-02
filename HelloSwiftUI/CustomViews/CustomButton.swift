//
//  CustomButton.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 12/31/21.
//

import SwiftUI

struct CustomButton: View {
    let action: () -> Void
    let title: String
    
    init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    var body: some View {
        Button(action: action, label: {
            Image(systemName: "clock")
            Text(title)
        })
            .foregroundColor(Color.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(5)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(["iPhone 8",
                     "iPhone 12 Mini",
                     "iPhone 12 Pro Max"], id: \.self) { deviceName in
                CustomButton(title: "abcd", action: {})
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .previewDisplayName(deviceName)
            }
        }
    }
}
