//
//  ContentView.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 11/30/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Int = 0
    @State private var tabVisible: Bool = true
    
    var body: some View {
        VStack (alignment: .center, spacing: 0) {
            ZStack {
                //MainGradientBackground()
                
                if (selection == 0) {
                    landingContent()
                } else if (selection == 1 ) {
                    VideoListView()
                } else if (selection == 2) {
                    operationMapsContent()
                } else if (selection == 3) {
                    podcastsContent()
                } else if (selection == 4) {
                    forumContent()
                }
                else if (selection == 5){
                    aboutUsContent()
                }
                else if (selection == 9){
                    PodcastsView(tabVisible: $tabVisible)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            if tabVisible {
                MainBottomTabBar(selection: $selection)
            }
            
            
            
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        
    }
    
    private func landingContent () -> some View {
        return LandingView()
    }
    
    private func videosContent () -> some View {
        return Text("Videos Content")
    }
    
    private func operationMapsContent () -> some View {
        return Text("OperationsMaps Content")
    }
    
    private func podcastsContent () -> some View {
        return PodcastOverviewView(selection: $selection, tabVisible: $tabVisible)
    }
    
    private func forumContent () -> some View {
        return Text("Forum Content")
    }
    
    private func aboutUsContent () -> some View {
        return AboutUs()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
