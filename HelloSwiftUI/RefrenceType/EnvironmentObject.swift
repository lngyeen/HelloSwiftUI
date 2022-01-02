//
//  EnvironmentObject.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 1/1/22.
//

import SwiftUI

class GameSettings: ObservableObject {
    @Published var score = 0
}

struct ScoreView: View {
    @EnvironmentObject var settings: GameSettings
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Score: \(settings.score)")
                    .font(.title)
                
                Button(action: {
                    settings.score += 1
                }, label: {
                    Text("Increase Score")
                        .padding()
                })
                NavigationLink(destination: ScoreView()) {
                    Text("Show Detail View")
                        .font(.title)
                }
            }
            .frame(height: 200)
        }
    }
}

struct GameView: View {
    @StateObject var settings = GameSettings()
    var body: some View {
        NavigationView {
            VStack {
                Text("Score: \(settings.score)")
                    .font(.title)
                
                Button(action: {
                    settings.score += 1
                }, label: {
                    Text("Increase Score")
                        .padding()
                })
                NavigationLink(destination: ScoreView()) {
                    Text("Show Detail View")
                        .font(.title)
                }
            }
            .frame(height: 200)
        }
        .environmentObject(settings)
    }
}
struct EnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
