//
//  Backend.swift
//  DrakeOfTheDay3
//
//  Created by Michael Imevbore on 6/11/23.
//

import UIKit
import SwiftUI
import Amplify
import AWSCognitoAuthPlugin
import AWSAPIPlugin

class Backend {
//    public static let lyricArray : [Lyric] = []
    static let shared = Backend()
    static func initialize() -> Backend {
        return .shared
    }
    private init() {
      // initialize amplify
      do {
        try Amplify.add(plugin: AWSCognitoAuthPlugin())
          try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: AmplifyModels()))
        try Amplify.configure()
        print("Initialized Amplify");
      } catch {
        print("Could not initialize Amplify: \(error)")
      }
    }
    
    func queryLyrics() {
        Task {
            do {
                let result = try await Amplify.API.query(request: .list(Transaction.self))
                    
                switch result {
                case.success(let lyricsData):
                    print("Successfully retrieved list of Lyrics")
//                    let lyric1 = lyricsData.randomElement()
//                    let goodLyric = Lyric.init(lyric1)
//                case .success(let lyricsData):
//                    print("Successfully retrieved list of Lyrics")
//
//                        // convert an array of LyricData to an array of Lyric class instances
//                        //an array of LyricData to get one Lyric class instance
//                for n in lyricsData {
//                        let lyric1 = Lyric.init(from: n)
//                        MainActor.run {
//                            lyricArray.append(lyric1)
//                            }
//                        }
//                        let goodLyric = lyricArray.randomElement()

                    case .failure(let error):
                        print("Can not retrieve result : error  \(error.errorDescription)")
                    }
                } catch {
                    print("Can not retrieve Notes : error \(error)")
                }
            }
        }

//        func createNote(lyric: Lyric) {
//
//            Task {
//                do {
//                    // use note.data to access the NoteData instance
//    let result = try await Amplify.API.mutate(request: .create(note.data))
//                    switch result {
//                        case .success(let data):
//                            print("Successfully created note: \(data)")
//                        case .failure(let error):
//                            print("Got failed result with \(error.errorDescription)")
//                        }
//                    }
//                } catch {
//                    print("Got failed result with error \(error)")
//                }
//            }
}
