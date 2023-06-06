//
//  InitialScreenView.swift
//  DrakeOfTheDay
//
//  Created by Michael Imevbore on 5/28/23.
//

import SwiftUI

struct InitialScreenView: View {
    @State private var opacity: Double = 0.5 // State property for opacity animation
    var body: some View {

            ZStack{
                VStack {
                    Image("ovoSymbol")
                        .resizable()
                        .cornerRadius(20)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Text("Welcome to Drake of the Day").font(.title)
                        .bold()
                        .padding(.top)
                    Text("Your Daily Dose of Drake")
                        .font(.title2)
                        .padding([.leading, .bottom, .trailing])
                }
            }
            .opacity(opacity) // Initial opacity for the fade effect
            .onAppear {
                withAnimation(.easeInOut(duration: 1.0)) {
                    opacity = 1.0
                }
            }
            
        }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialScreenView()
    }
}
