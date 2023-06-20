//
//  MainView.swift
//  DrakeOfTheDay3
//
//  Created by Michael Imevbore on 6/11/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomepageView(currLyric: prepareTestData())
                .tabItem {
                    Label("Today", systemImage: "flame.fill")
                }
            PreviousView()
                .tabItem {
                    Label("Previous", systemImage: "book.fill")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

