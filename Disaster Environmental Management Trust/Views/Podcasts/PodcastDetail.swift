//
//  PodcastDetail.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/26/21.
//

/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct PodcastDetail: View {
    @EnvironmentObject var modelData: ModelData
    var podcast: Podcast

    var landmarkIndex: Int {
        modelData.podcasts.firstIndex(where: { $0.id == podcast.id })!
    }

    var body: some View {
        ScrollView {
            MapView(coordinate: podcast.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage(image: podcast.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .center) {
                HStack {
                    Text(podcast.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }

                HStack {
                    Text(podcast.category.rawValue)
                    Spacer()
                    Text(podcast.province)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(podcast.name)")
                    .font(.title2)
                Text(podcast.description)
                HStack {
                    Button(action: {
                    }) {
                        Image(systemName: "backward.end.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.black)
                    }

                    Button(action: {
                    }) {
                        Image(systemName: "arrowtriangle.backward.circle")
                            .font(.system(size: 50))
                            .foregroundColor(.black)
                    }
                    
                    Button(action: {
                    }) {
                        Image(systemName: "play.square")
                            .font(.system(size: 50))
                            .foregroundColor(.black)
                    }
                    
                    Button(action: {}, label: {
                        Image(systemName: "arrowtriangle.forward.circle")
                            .font(.system(size: 50))
                            .foregroundColor(.black)
                    })

                    Button(action: {
                    }) {
                        Image(systemName: "forward.end.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.black)
                    }
                }
                .frame(height: 70)
            }
            .padding()
        }
        .navigationTitle(podcast.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PodcastDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        PodcastDetail(podcast: modelData.podcasts[0])
            .environmentObject(modelData)
    }
}

