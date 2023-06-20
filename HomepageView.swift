//
//  HomepageView.swift
//  DrakeOfTheDay3
//
//  Created by Michael Imevbore on 6/11/23.
//

import SwiftUI

struct HomepageView: View {
    @ObservedObject var currLyric: Lyric
    //this is what I want homepage to look like
    //very very tentative, just a general outline
    //change font for code
    //make song button smaller and clickable
    var body: some View {
        ZStack {
            VStack(alignment: .leading ) {
                
                Spacer()
                Text("TODAY'S  LYRIC")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                    .padding(.horizontal)

                Spacer()


                Text(currLyric.lyric)
                    .font(.title3)
                    .padding(.horizontal)

                Spacer()

                //change this font


                HStack { //will pretty much be a button
                    Spacer()
                    Text(currLyric.song)
                        .foregroundColor(Color.white)
                        .bold()

                    Spacer()

                    Image("herLoss")
                    //next step to be able to pull this too
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0)
                        .cornerRadius(20)
                    Spacer()

                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20).foregroundColor(Color(hue: 1.0, saturation: 0.027, brightness: 0.272)))
                .shadow(radius: 15)
                .padding()

                Spacer()

                Text("ANALYSIS")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                
                Spacer()
                
                Text(currLyric.analysis)
                    .padding(.horizontal)
                
                }
            .padding()
        }

    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        
        return HomepageView(currLyric: prepareTestData())
    }
}


