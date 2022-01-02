//
//  HelloSwiftUIApp.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 12/31/21.
//

import CoreGraphics
import SwiftUI

@main
struct HelloSwiftUIApp: App {
    @Environment(\.scenePhase) private var scenePhase
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    @State var name: String = ""
    
    init() {
        print("App init call")
    }

    var body: some Scene {
        WindowGroup {
            MyAvatar(name: "Luu nguyen",
                     redValue: .constant(1),
                     blueValue: .constant(0),
                     greenValue: .constant(0))
//            ToggleNotification()
                .onOpenURL(perform: { url in
                    name = url.valueOf("name") ?? ""
                    
                    print(url.absoluteURL)
                    print(name)
                })
        }.onChange(of: scenePhase) { phase in
            switch phase {
            case .background:
                print("App State : Background")
            case .inactive:
                print("App State : Inactive")
            case .active:
                print("App State : Active")
            @unknown default:
                print("App State : Unknown")
            }
        }
    }
}

extension URL {
    func valueOf(_ queryParamaterName: String) -> String? {
        guard let url = URLComponents(string: self.absoluteString) else { return nil }
        return url.queryItems?.first(where: { $0.name == queryParamaterName })?.value
    }
}
