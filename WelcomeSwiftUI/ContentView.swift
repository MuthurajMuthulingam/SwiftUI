//
//  ContentView.swift
//  WelcomeSwiftUI
//
//  Created by Muthuraj Muthulingam - Vendor on 11/07/19.
//  Copyright © 2019 Muthuraj Muthulingam - Vendor. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var persons: [Person] {
        get {
            return [.init(id: 1, name: "Muthu", age: "28", gender: .male)]
        }
    }
    
    var body: some View {
        NavigationView {
            List(persons.identified(by: \.id)) { person in
                Text("Welcome \(person.name) to SwiftUI List ")
            }
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        }
        .navigationBarTitle(Text("Muthu"), displayMode: .inline)
    }
}

enum Gender {
    case male
    case female
    case transgender
}

struct Person: Identifiable {
    var id: Int
    let name: String
    let age: String
    let gender: Gender
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
