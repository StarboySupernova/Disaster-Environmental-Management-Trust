//
//  LandingImages.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/14/21.
//

import SwiftUI

extension LandingView {
    static var images: some View {
      ZStack {
        Image("demtBaking")
          .resizedToFill(width: 100, height: 100)
          .clipShape(Circle())
          .offset(x: -88, y: 30)
        Image("tomato")
          .resizedToFill(width: 40, height: 40)
          .clipShape(Circle())
          .offset(x: -54, y: -80)
        Image("demtCalories")
          .resizedToFill(width: 20, height: 20)
          .clipShape(Circle())
          .offset(x: -44, y: -40)
        Image("demtCropRotation")
          .resizedToFill(width: 60, height: 60)
          .clipShape(Circle())
          .offset(x: -133, y: -60)
        Image("demtDecemberCharity")
          .resizedToFill(width: 180, height: 180)
          .clipShape(Circle())
          .offset(x: 74)
      }
      .frame(maxWidth: .infinity, maxHeight: 220)
      .shadow(color: Color(.black), radius: 6, x: 5, y: 5)
      .padding(.top, 10)
      .padding(.leading, 20)
      .padding(.bottom, 10)
    }
    
    static var welcomeText: some View {
      return HStack(alignment: .bottom) {
        VStack(alignment: .leading) {
          Text("D.E.M.T.")
            .font(.largeTitle)
            .fontWeight(.black)
            .kerning(2)
          Text("dedicated to making a positive difference")
            .font(.headline)
            .fontWeight(.medium)
            .kerning(2)
        }
      }
    }
    
}
struct LandingImages_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            LandingView.images
            LandingView.welcomeText
        }
    }
}
