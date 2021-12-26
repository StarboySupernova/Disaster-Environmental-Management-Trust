//
//  PodcastList.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/26/21.
//
/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct PodcastList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false

    var filteredPodcasts: [Podcast] {
        modelData.podcasts.filter { podcast in
            (!showFavoritesOnly || podcast.isFavorite)
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(filteredPodcasts) { podcast in
                    NavigationLink {
                        PodcastDetail(podcast: podcast)
                    } label: {
                        PodcastRow(podcast: podcast)
                    }
                }
            }
            .navigationTitle("Podcasts")
        }
    }
}

struct PodcastList_Previews: PreviewProvider {
    static var previews: some View {
        PodcastList()
            .environmentObject(ModelData())
    }
}

