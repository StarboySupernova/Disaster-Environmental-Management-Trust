//
//  PodcastOverviewView.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/21/21.
//

import SwiftUI
import Liquid

struct PodcastOverviewView: View {
    
    
    @Binding var selection: Int
    @Binding var tabVisible: Bool
    static var listenersCount: Int = 17
    
    var body: some View {
        ContainerView{
            GeometryReader { geometry in
                
            ZStack {
                    ZStack {
                        Rectangle()
                            .frame(width: geometry.size.width * 0.3, height: 270)
                            .foregroundColor(.gray)
                        Image("demtCommunityDonation")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width * 0.3, height: 270)
                            .blur(radius: 2)
                            
                    }
                        .cornerRadius(50, corners: [.topRight, .bottomLeft])
                        .position(x: geometry.size.width / 5.5, y: geometry.size.height * 0.575)
                    
                    ZStack {
                        Rectangle()
                            .frame(width: geometry.size.width * 0.3, height: 320)
                            .foregroundColor(.gray)
                        Image("demtGlobalSummit-2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width * 0.4, height: 320)
                            .blur(radius: 2)
                            
                    }
                    .cornerRadius(50, corners: [.topLeft, .bottomRight])
                    .position(x: geometry.size.width / 1.55, y: geometry.size.height * 0.65)
                    
                    ZStack {
                        Rectangle()
                            .frame(width: geometry.size.width * 0.3, height: 320)
                            .foregroundColor(.gray)
                        Image("demtCommunityBaking")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width * 0.4, height: 320)
                            .blur(radius: 5)
                            
                    }
                    .cornerRadius(50, corners: [.topRight, .bottomLeft])
                    .position(x: geometry.size.width / 3, y: geometry.size.height * 0.8)
                    
                    ZStack {
                        Rectangle()
                            .frame(width: geometry.size.width * 0.3, height: 250)
                            .foregroundColor(.gray)
                        Image("demtGlobalSummit")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width * 0.7, height: 250)
                            .blur(radius: 0)
                            
                    }
                    .cornerRadius(50, corners: [.topLeft, .bottomRight])
                    .position(x: geometry.size.width / 1.6, y: geometry.size.height * 0.8)
                     
                    Text("Talking Points")
                        .font(.headline)
                        .fontWeight(.medium)
                        .kerning(2)
                        .position(x: geometry.size.width / 1.3, y: geometry.size.height * 0.44)
                    
                    Text("D.E.M.T.")
                      .font(.largeTitle)
                      .fontWeight(.black)
                      .kerning(2)
                      .position(x: geometry.size.width / 1.3, y: geometry.size.height * 0.98)
                    
                }
                
            }
            
        } bottomContent: {
            VStack{
                PodcastOverviewView.podcastLink
                RaisedButton(buttonText: "Listen Now", action: {
                    selection = 9
                    tabVisible = false
                })
            }
            
        }
        
    }
}

struct PodcastOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastOverviewView(selection: .constant(9), tabVisible: .constant(true))
    }
}
