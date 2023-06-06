//
//  HomepageView.swift
//  DrakeOfTheDay
//
//  Created by Michael Imevbore on 5/28/23.
//

import SwiftUI

struct HomepageView: View {
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


                Text("Yellow diamonds in the watch, this shit cost a lot Never send a bitch your dot, that's how you get shot I DM in Vanish Mode, I do that shit a lot Took her panties off and this bitch thicker than the plot All my exes ain't nothin', them hoes busted")
                    .font(.title3)
                    .padding(.horizontal)

                Spacer()

                //change this font


                HStack { //will pretty much be a button
                    Spacer()
                    Text("Rich Flex")
                        .foregroundColor(Color.white)
                        .bold()

                    Spacer()

                    Image("herLoss")
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
                
                Text("This is a really great analysis This is a really great analysis This is a really great analysis This is a really great analysis This is a really great analysis This is a really great analysis This is a really great analysis This is a really great analysis This is a really great analysis This is a really great analysis This is a really great analysis This is a really great analysis This is a really great analysis This is a really great analysis This is a really great analysis This is a really great analysis This is a really great analysis This is a really great analysis This is a really great analysis")
                    .padding(.horizontal)
                
                }
            .padding()
        }

    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}

 

