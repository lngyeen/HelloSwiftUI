//
//  UserView.swift
//  HelloSwiftUI
//
//  Created by Nguyen Truong Luu on 1/1/22.
//

import SwiftUI

struct UserView: View {
    
    @ObservedObject var user: User
    
    var body: some View {
        VStack {
            Image(systemName: "person.crop.square")
                .resizable()
                .foregroundColor(.blue)
            Text(user.name)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Text("\(user.age)")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
        }.frame(width: 100, height: 200, alignment: .center)
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(user: User(name: "Luu", age: 30))
    }
}
