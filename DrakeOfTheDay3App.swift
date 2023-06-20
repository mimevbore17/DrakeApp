//
//  DrakeOfTheDay3App.swift
//  DrakeOfTheDay3
//
//  Created by Michael Imevbore on 6/11/23.
//

import SwiftUI

@main
struct DrakeOfTheDay3App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    init() {
            // initialize Amplify
            Backend.initialize()
        
    }
}
