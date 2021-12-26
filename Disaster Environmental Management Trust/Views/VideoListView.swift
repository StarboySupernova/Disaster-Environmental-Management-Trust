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
        ZStack {
            Image("masterBackground")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 0)
            MainGradientBackground()
                .opacity(1)
            
            NavigationView {
                List(videos, id: \.id){ video in
                    HStack {
                        NavigationLink(destination: VideoDetailView(video: video), label: {
                            HStack{
                                Image(video.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 70)
                                    .cornerRadius(4)
                                    .padding(.vertical, 4)
                                
                                VStack (alignment: .leading, spacing: 5) {
                                    Text(video.title)
                                        .fontWeight(.semibold)
                                        .font(.system(size: 25))
                                        .lineLimit(2)
                                        .minimumScaleFactor(0.5)
                                        
                                    
                                    Text(video.uploadDate)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                            }
                            
                        })
                    }
                }
                .navigationTitle("Documentaries")
            }
            .opacity(0.78)
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
