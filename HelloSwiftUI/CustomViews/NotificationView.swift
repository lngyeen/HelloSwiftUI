//
//  NotificationView.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 12/31/21.
//

import Foundation
import SwiftUI

struct NotificationView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        content
            .padding()
            .background(Color(.tertiarySystemBackground))
            .cornerRadius(16)
            .transition(.move(edge: .top))
            .animation(.spring())
    }
}
