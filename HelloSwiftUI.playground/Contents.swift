import PlaygroundSupport
import SwiftUI

let hostingViewController = UIHostingController(rootView: ContentView(name: "Luu Nguyen"))
hostingViewController.view.frame = CGRect(origin: .zero, size: CGSize(width: 300, height: 450))
PlaygroundPage.current.setLiveView(hostingViewController)
