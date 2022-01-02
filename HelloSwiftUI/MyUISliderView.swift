//
//  MyUISliderView.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 1/1/22.
//

import SwiftUI
import UIKit

struct MyUISliderView: UIViewRepresentable {
    
    typealias UIViewType = UISlider
    
    var color: UIColor
    @State var value: Float
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider(frame: .zero)
        slider.thumbTintColor = color
        slider.tintColor = color
        slider.value = value
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = value
    }
}

struct MyUISliderView_Previews: PreviewProvider {
    static var previews: some View {
        MyUISliderView(color: .red, value: 0.7)
    }
}
