//
//  PodcastsView.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/20/21.
//

import SwiftUI

struct PodcastsView: View {
    @State private var selection: Tab = .featured
    @Binding var tabVisible: Bool

    enum Tab {
        case featured
        case list
    }

    var body: some View {
        TabView(selection: $selection) {
            CategoryHome(tabVisible: $tabVisible)
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)

            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct PodcastsView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastsView(tabVisible: .constant(false))
            .environmentObject(ModelData())
    }
}
