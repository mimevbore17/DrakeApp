//
//  Backend.swift
//  DrakeOfTheDay
//
//  Created by Michael Imevbore on 5/31/23.
//

import UIKit
import Amplify
import Amplify
import AWSCognitoAuthPlugin

class Backend {
    static let shared = Backend()
    static func initialize() -> Backend {
        return .shared
    }
    private init() {
      // initialize amplify
      do {
        try Amplify.configure()
        print("Initialized Amplify");
      } catch {
        print("Could not initialize Amplify: \(error)")
      }
    }
    
    
}
