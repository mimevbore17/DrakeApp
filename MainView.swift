//
//  MainView.swift
//  DrakeOfTheDay
//
//  Created by Michael Imevbore on 5/28/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomepageView()
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
