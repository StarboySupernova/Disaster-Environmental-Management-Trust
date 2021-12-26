//
//  CurvedTabView.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/13/21.
//

import SwiftUI
import Liquid

struct CurvedTabView: View {
    
    var body: some View {
        ZStack {
            Image("masterBackground")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 1)
                .frame(width: 300, height: 700)
            MainGradientBackground()
                .opacity(0.8)
            GeometryReader {geometry in
                VStack (spacing: geometry.size.height * 0.025) {
                    ZStack {
                        GeneralGradient()
                            .opacity(0.55)
                        LandingView.images
                            .frame(width: geometry.size.width, height: geometry.size.height)
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.3)
                    .cornerRadius(40, corners: [.bottomRight, .topLeft])
                    .shadow(color: Color("background"), radius: 3, x: 6, y: 6)
                    .shadow(color: Color("background"), radius: 3, x: -6, y: -6)
                    
                    ZStack {
                        Liquid()
                            .frame(width: geometry.size.width * 0.95, height: 240)
                            .opacity(0.1)
                            .foregroundColor(.yellow)
                        
                        Liquid()
                            .frame(width: geometry.size.width * 0.85, height: 200)
                            .opacity(0.1)
                            .foregroundColor(.purple)
                        
                        Liquid()
                            .frame(width: geometry.size.width * 0.8, height: 380)
                            .opacity(0.2)
                            .foregroundColor(.mint)
                        
                        Liquid()
                            .frame(width: geometry.size.width * 0.7, height: 320)
                            .opacity(0.1)
                            .foregroundColor(.cyan)
                        Image("greenLogoSmall")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width * 0.5, height: 200)
                            .mask(Liquid())
                    }
                    
                    
                    LandingView.welcomeText
                        //.frame(width: geometry.size.width)
                        //.background(Color(UIColor.systemGray3))
                        //.edgesIgnoringSafeArea([.leading, .trailing])
                        //.background(Color(UIColor.systemGray3))
                        //.cornerRadius(40, corners: .topLeft)
                }
                
                
            }
            
        }
    }
}

struct CurvedTabView_Previews: PreviewProvider {
    static var previews: some View {
        CurvedTabView()
            //.preferredColorScheme(.dark)
    }
}
