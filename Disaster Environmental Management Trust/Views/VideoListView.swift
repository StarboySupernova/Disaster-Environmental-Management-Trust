//
//  VideoListView.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/16/21.
//

import SwiftUI

struct VideoListView: View {
    
    var videos : [Video] = VideoList.topTen
    var body: some View {
        NavigationView {
            List(videos, id: \.id){ video in
                HStack {
                    NavigationLink(destination: VideoDetailView(video: video), label: {
                        Image(video.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                            .cornerRadius(4)
                            .padding(.vertical, 4)
                        
                        VStack (alignment: .leading, spacing: 5) {
                            Text(video.title)
                                .fontWeight(.semibold)
                                .lineLimit(2)
                                .minimumScaleFactor(0.5)
                            
                            Text(video.uploadDate)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    })
                    
                }
            }
            .navigationTitle("Documentaries")
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
