//
//  ContentView.swift
//  DrakeOfTheDay
//
//  Created by Michael Imevbore on 5/25/23.
//

import SwiftUI
import Combine
import UIKit

struct ContentView: View {
    @State private var showHomepage = false
    var body: some View {
            NavigationView {
                VStack {
                    if showHomepage{
                        MainView()
                            .transition(.opacity)
                            .zIndex(1)//fade
                    } else {
                        InitialScreenView()
                            .transition(.opacity)
                            .zIndex(2)//fade
                    }
                }
                .navigationTitle("Drake of the Day")
                .navigationBarHidden(true)
                .onAppear {
                    //Trigger Fade
                    DispatchQueue.main.asyncAfter(deadline : .now() + 4.0) {
                        withAnimation(.easeInOut(duration: 1.5)) {
                            showHomepage = true
                        }
                    }
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
