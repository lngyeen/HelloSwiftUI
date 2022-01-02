//
//  MyAvatar.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 1/1/22.
//

import SwiftUI
import Foundation

struct MyAvatar: UIViewRepresentable {
    var name: String
    var color: UIColor {
        UIColor(red: CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue), alpha: 1.0)
    }
    
    @Binding var redValue: Double
    @Binding var blueValue: Double
    @Binding var greenValue: Double
    
    typealias UIViewType = AvatarView
    
    func makeUIView(context: Context) -> AvatarView {
        let avatarView = Bundle.main.loadNibNamed("AvatarView", owner: nil, options: nil)?.first as! AvatarView
        
        avatarView.name = name
        avatarView.color = color
        avatarView.updateView()
        avatarView.delegate = context.coordinator
        
        return avatarView
    }
    
    func updateUIView(_ uiView: AvatarView, context: Context) {
        uiView.name = name
        uiView.color = color
        uiView.updateView()
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
    
    class Coordinator: AvatarViewDelegate {
        var parent: MyAvatar
        
        init(_ parent: MyAvatar) {
            self.parent = parent
        }
        
        func avatarView(avatarView: AvatarView, name: String) {
            parent.redValue = Double.random(in: 0...1)
            parent.blueValue = Double.random(in: 0...1)
            parent.greenValue = Double.random(in: 0...1)
        }
    }
}

struct MyAvatar_Previews: PreviewProvider {
    static var previews: some View {
        MyAvatar(name: "Luu nguyen",
                 redValue: .constant(1),
                 blueValue: .constant(0),
                 greenValue: .constant(0))
    }
}
