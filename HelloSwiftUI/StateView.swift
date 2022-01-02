//
//  StateView.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 1/1/22.
//

import SwiftUI

struct Score {
    var count: Int = 0
}

struct StateView: View {
    @Binding var item: Score
    
    var body: some View {
        Button(action: {
            item.count += 1
        }, label: {
            Text("Tap me!\n\(item.count)")
                .font(.title)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
        })
            .padding()
            .background(Color(.blue))
    }
}

struct StateView_Previews: PreviewProvider {
    @State static var item = Score(count: 10)
    static var previews: some View {
        StateView(item: $item)
    }
}
