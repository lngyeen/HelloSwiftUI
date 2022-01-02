//
//  EnvironmentVariableView.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 12/31/21.
//

import SwiftUI

struct EnvironmentVariableView: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .background(colorScheme == .dark ? Color(.black) : Color(.white))
                .padding()
            Text("Hello again!")
                .padding()
                .environment(\.colorScheme, .light)
        }
        .colorScheme(.dark)
        .font(Font.subheadline.lowercaseSmallCaps()
                .weight(.light))
    }
}

struct EnvironmentVariableView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentVariableView()
            .environment(\.colorScheme, .dark)
    }
}
