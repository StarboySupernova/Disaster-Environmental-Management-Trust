//
//  VideoDetailView.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/16/21.
//

import SwiftUI

struct VideoDetailView: View {
    
    var video: Video
    var body: some View {
        ZStack {
            Image("masterBackground")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 4)
            MainGradientBackground()
                .opacity(0.6)
            
            VStack(spacing: 20) {
                Spacer()
                
                Image(video.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .cornerRadius(30, corners: [.topRight, .bottomLeft])
                    .shadow(color: Color(.black), radius: 6, x: 5, y: 5)
                
                Text(video.title)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                HStack(spacing: 40) {
                    Label("\(video.viewCount)", systemImage: "eye.fill")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .shadow(color: Color(.black), radius: 6, x: 5, y: 5)
                    
                    //Label("Label Placeholder", image: "demtCommunityDonation")
                    
                    Text(video.uploadDate)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .shadow(color: Color(.black), radius: 6, x: 5, y: 5)
                }
                
                Text(video.description)
                    .font(.body)
                    .padding()
                
                Spacer()
                
                Link(destination: video.url, label: {
                    Text("Watch Now")
                        .bold()
                        .font(.title2)
                        .frame(width: 250, height: 50)
                        .background(Color(UIColor.systemRed))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.bottom, 35)
                    
                })
    
            }
                
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}
