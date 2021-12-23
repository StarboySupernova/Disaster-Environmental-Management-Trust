//
//  ContentView.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 11/30/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Int = 0
    
    var body: some View {
        VStack (alignment: .center, spacing: 0) {
            ZStack {
                //MainGradientBackground()
                
                if (selection == 0) {
                    landingContent()
                } else if (selection == 1 ) {
                    videosContent()
                } else if (selection == 2) {
                    operationMapsContent()
                } else if (selection == 3) {
                    podcastsContent()
                } else if (selection == 4) {
                    forumContent()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            HStack(alignment: .lastTextBaseline){
                CustomTabBarItem(iconName: "house.circle.fill", label: "Home", selection: $selection, tag: 0)
                CustomTabBarItem(iconName: "play.tv.fill", label: "Film", selection: $selection, tag: 1)
                CustomTabBarItem(iconName: "globe.europe.africa.fill", label: "Operations", selection: $selection, tag: 2)
                CustomTabBarItem(iconName: "waveform.and.mic", label: "Podcasts", selection: $selection, tag: 3)
                CustomTabBarItem(iconName: "paperplane.circle.fill", label: "Forum", selection: $selection, tag: 4)
                CustomTabBarItem(iconName: "person.3.fill", label: "About Us", selection: $selection, tag: 5)
            }
            .background(
                GeometryReader { parentGeometry in
                    Rectangle()
                        .fill(Color(UIColor.systemGray2))
                        .frame(width: parentGeometry.size.width, height: 0.5)
                        .position(x: parentGeometry.size.width / 2, y: 0)
                        .cornerRadius(90)
                }
            )
            .background(Color(UIColor.systemGray6))
            
            
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        
    }
    
    private func landingContent () -> some View {
        return LandingView()
    }
    
    private func videosContent () -> some View {
        return Text("Recents Content")
    }
    
    private func operationMapsContent () -> some View {
        return Text("Contacts Content")
    }
    
    private func podcastsContent () -> some View {
        return PodcastOverviewView()
    }
    
    private func forumContent () -> some View {
        return Text("Voicemail Content")
    }
    
    private func aboutUsContent () -> some View {
        return Text("About Us")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
