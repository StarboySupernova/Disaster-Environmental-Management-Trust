//
//  FeatureCard.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku  on 12/18/21.
//

import SwiftUI

struct FeatureCard: View {
    
    var podcast: Podcast
    
    var body: some View {
        podcast.featureImage?
            .resizable()
            .aspectRatio(3/2, contentMode: .fit)
            .overlay{
                TextOverlay(podcast: podcast)
            }
    }
    
    struct TextOverlay: View {
        
        var podcast: Podcast
        
        var gradient: LinearGradient {
            .linearGradient(Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]), startPoint: .bottom, endPoint: .center)
        }
        
        var body: some View {
            ZStack(alignment: .bottomLeading){
                gradient
                VStack(alignment: .leading){
                    Text(podcast.name)
                        .font(.title)
                        .bold()
                    Text(podcast.category.rawValue)
                }
                .padding()
            }
            .foregroundColor(.white)
        }
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(podcast: ModelData().featuresContent[0])
    }
}
