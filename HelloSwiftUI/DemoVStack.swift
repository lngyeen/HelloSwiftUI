//
//  DemoVStack.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 1/1/22.
//

import SwiftUI

struct DemoVStack: View {
    let maxCollumn: Int = 6
    var body: some View {
        VStack {
            ForEach((1...4), id: \.self) { line in
                HStack {
                    ForEach((1...maxCollumn), id: \.self) { collumn in
                        ItemView(width: 50, height: 50, name: "\((line - 1) * maxCollumn + collumn)")
                    }
                }
            }
        }
    }
}

struct DemoVStack_Previews: PreviewProvider {
    static var previews: some View {
        DemoVStack()
    }
}
