//
//  ViewBuilder.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 12/31/21.
//

import Foundation
import SwiftUI

struct SingleChildView<Content: View>: View {
    let content: Content

    init(content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        content.padding()
            .background(Color.red)
    }
}
