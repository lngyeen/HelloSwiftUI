//
//  ItemView.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 1/1/22.
//

import SwiftUI

struct ItemView: View {
    var width: CGFloat = 200
    var height: CGFloat = 100
    var name = ""
    var backgroundColor: Color = .blue
    
    var body: some View {
        Text(name)
            .foregroundColor(Color.white)
            .frame(width: width, height: height, alignment: .center)
            .background(backgroundColor)
            .padding(.all, 1.0)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(width: 100, height: 100, name: "Image", backgroundColor: .gray)
    }
}
