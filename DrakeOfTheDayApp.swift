//
//  DrakeOfTheDayApp.swift
//  DrakeOfTheDay
//
//  Created by Michael Imevbore on 5/25/23.
//

import SwiftUI

@main
struct DrakeOfTheDayApp: App {
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
