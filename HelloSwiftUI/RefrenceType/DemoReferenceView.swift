//
//  ReferenceType.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 1/1/22.
//

import SwiftUI

class User: ObservableObject {
    @Published var name: String
    @Published var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct DemoReferenceView: View {
    
    @StateObject var user = User(name: "Fx Studio", age: 18)
    
    var body: some View {
        VStack {
            Text("\(user.age) years old")
                .font(.title)
                .foregroundColor(Color.blue)
                .padding()
            UserView(user: user)
                .frame(width: 100, height: 175)
                .padding()
            HStack{
                Button(action: {
                    user.age += 1
                }, label: {
                    Text("+")
                        .font(.title)
                        .foregroundColor(Color.red)
                        .padding()
                        .background(Color(.lightGray))
                })
                Button(action: {
                    user.age -= 1
                }, label: {
                    Text("-")
                        .font(.title)
                        .foregroundColor(Color.red)
                        .padding()
                        .background(Color(.lightGray))
                })
            }
        }
    }
}

struct ReferenceType_Previews: PreviewProvider {
    static var previews: some View {
        DemoReferenceView()
    }
}
