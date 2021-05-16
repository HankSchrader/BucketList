//
//  ContentView.swift
//  Shared
//
//  Created by Erik Mikac on 5/16/21.
//

import SwiftUI
struct User: Identifiable, Comparable {
    static func < (lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
    
    let id = UUID()
    let firstName: String
    let lastName: String
}
struct ContentView: View {


    var body: some View {

        Text("Hello World")
            .onTapGesture {
            
                FileManager.writeToDocumentsDirectory(message: "Test Message")
            }
    }
    
    func getDocumentsDirectory() -> URL {
        // find all possible documents directories for this user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

        // just send back the first one, which ought to be the only one
        return paths[0]
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
