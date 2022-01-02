//
//  GradientView.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 12/31/21.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        VStack {
            Text("Hello World")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .font(.title)
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(0)
            
            Text("Hello World again")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .font(.title)
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [.white, .yellow, .red]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(0)
            
            Text("Hello World again and again")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .font(.title)
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [.green, .blue, .orange, .red]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(0)
        }
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
