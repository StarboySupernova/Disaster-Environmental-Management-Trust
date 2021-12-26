//
//  PodcastsNavigation.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/22/21.
//

import SwiftUI

extension PodcastOverviewView {
    static var podcastLink: some View {
        VStack{
            
            
            NavigationLink(destination: PodcastsView(tabVisible: .constant(false)), label: {
                HStack(spacing: 0){
                    VStack {
                        Image("demtCommunityDonation")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                            .cornerRadius(4)
                            .padding(.vertical, 4)
                            /*.resizable()
                            .scaledToFit()
                            .frame(height: 150)
                            .cornerRadius(30)*/
                        
                        Label("\(listenersCount) listeners", systemImage: "mic.fill")
                            .foregroundColor(.black)
                    }
                    
                    VStack(spacing: 20) {
                       /* Text("Podcasts")
                            .font(.system(size: 25))
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                            .frame(width: 150, height: 30)
                            .background(Color.blue)
                            .cornerRadius(10) */
                        
                            
                        
                        Text("Enlightened youth-led discourse on grassroots community capacity building and the sustainable mitigation of pertinent issues affecting communities in the catchment area")
                            .font(.caption)
                            .fontWeight(.bold)
                            .lineLimit(5)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                            .foregroundColor(.black)
                    }
                    
                }
                .padding(.horizontal)
                
            })
            
        }
        .padding(.vertical, 40)
        //.border(.blue) will add neumorphism later
    }
    
}

struct PodcastsNavigation_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            PodcastOverviewView.podcastLink
        }
        //.preferredColorScheme(.dark)
    }
}
