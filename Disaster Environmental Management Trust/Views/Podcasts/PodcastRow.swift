//
//  PodcastRow.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/26/21.
//

/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A single row to be displayed in a list of landmarks.
*/

import SwiftUI

struct PodcastRow: View {
    var podcast: Podcast

    var body: some View {
        HStack {
            podcast.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(podcast.name)

            Spacer()

            if podcast.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct PodcastRow_Previews: PreviewProvider {
    static var podcasts = ModelData().podcasts

    static var previews: some View {
        Group {
            PodcastRow(podcast: podcasts[0])
            PodcastRow(podcast: podcasts[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}


