//
//  Lyric.swift
//  DrakeOfTheDay3
//
//  Created by Michael Imevbore on 6/11/23.
//

import SwiftUI

class Lyric : Identifiable, ObservableObject {
    var id : Int
var song : String
var lyric : String
    var analysis : String

    init(id: Int, song: String, lyric: String, analysis: String) {
        self.id = id
        self.song = song
        self.lyric = lyric
        self.analysis = analysis
    }
    convenience init(from data: LyricData) {
        self.init(id: data.id, song: data.song, lyric: data.lyric, analysis: data.analysis)
     
        // store API object for easy retrieval later
        self._data = data
    }

    fileprivate var _data : LyricData?

    // access the privately stored NoteData or build one if we don't have one.
    var data : LyricData {

        if (_data == nil) {
            _data = LyricData(id: self.id,
                                song: self.song,
                                lyric: self.lyric,
                                analysis: self.analysis)
        }

        return _data!
    }
}

// this is a test data set to preview the UI in Xcode
@discardableResult
func prepareTestData() -> Lyric {
let desc = "this is a very long description that should fit on multiiple lines.\nit even has a line break\nor two."
let title = "drake song"
let lyrics = "drake lyrics"
    let l1 = Lyric(id: 1, song: title, lyric: lyrics, analysis: desc)

    return l1
}
