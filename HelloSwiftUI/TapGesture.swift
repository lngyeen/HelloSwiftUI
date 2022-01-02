//
//  TapGesture.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 12/31/21.
//

import SwiftUI

struct TapGesture: View {
    @State var red: Double = 1.0
    @State var green: Double = 1.0
    @State var blue: Double = 0

    var body: some View {
        VStack {
            Text("Tap me!")
                .font(.title)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .background(Color(red: red, green: green, blue: blue))
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    red = Double.random(in: 0...1)
                    green = Double.random(in: 0...1)
                    blue = Double.random(in: 0...1)
                }
        }
    }
}

struct TapGesture_Previews: PreviewProvider {
    static var previews: some View {
        TapGesture()
    }
}
