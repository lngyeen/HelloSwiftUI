//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 12/31/21.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    @StateObject var user = User(name: "Luu", age: 30)
    
    var body: some View {
        VStack {
            Text("Selected \(count) users.")
                .padding()
                .font(.title)
                .foregroundColor(Color.white)
                .background(Color(.red))
            HStack {
                UserView(user: user)
            }
            HStack {
                Button(action: {
                    user.age += 1
                }) {
                    Text("+")
                        .foregroundColor(Color.white).frame(width: 80, height: 40, alignment: .center)
                }
                    .background(Color.green)
                
                Button(action: {
                    user.age -= 1
                }) {
                    Text("-").foregroundColor(Color.white).frame(width: 80, height: 40, alignment: .center)
                }
                    .background(Color.green)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach([ /* "iPhone 8",
             "iPhone 12 Mini", */
            "iPhone 12 Pro Max",
            ], id: \.self) { deviceName in
                ContentView()
                    .environment(\.colorScheme, .light)
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .previewDisplayName(deviceName)
            }
        }
    }
}

struct MyView: View {
    @State var number: Int = 10
    @Binding var isShowAlert: Bool
    @Binding var message: String

    var body: some View {
        VStack {
            Text("\(number)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)

            Button(action: {
                if number < 20 {
                    number += 1
                } else {
                    isShowAlert = true
                    message = "Maximum"
                }
            }) {
                Image(systemName: "arrowtriangle.up.fill")
                    .resizable()
                    .frame(width: 50.0, height: 50.0)
                    .foregroundColor(.red)
            }
            .frame(width: 50.0, height: 50.0)

            Text("Placeholder")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.green)
                .padding(.all)

            Button(action: {
                if number > 0 {
                    number -= 1
                } else {
                    isShowAlert = true
                    message = "Minimum"
                }
            }) {
                Image(systemName: "arrowtriangle.down.fill")
                    .resizable()
                    .frame(width: 50.0, height: 50.0)
            }
            .frame(width: 50.0, height: 50.0)
        }.frame(width: 50.0, height: 200.0)
    }
}
