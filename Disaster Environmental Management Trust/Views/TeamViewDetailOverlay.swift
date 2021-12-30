//
//  TeamViewDetailOverlay.swift
//  Disaster Environmental Management Trust
//
//  Created by user207077 on 12/29/21.
//

import SwiftUI

struct TeamViewDetailOverlay: View {
    
    var detailText: String = ""
    var headerText: String = ""
    var imageName: String = ""
    
    var gradient: LinearGradient {
        .linearGradient(Gradient(colors: [.black.opacity(0.9), .black.opacity(0.5)]), startPoint: .bottom, endPoint: .center)
    }
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack {
                gradient
                VStack(alignment: .leading){
                    Label(title: {Text(headerText)
                            .font(.headline)
                            .fontWeight(.medium)
                            .kerning(2)
                            .foregroundColor(.white)
                            }, icon: {
                                Image(systemName: imageName)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.white)
                                    .padding([.leading, .trailing], 20)
                        })
                        .padding()
                    /*Text(headerText)
                        .font(.headline)
                        .fontWeight(.medium)
                        .kerning(2)
                        .foregroundColor(.white)
                        .padding([.top], 40)
                        .padding(.leading, 20)*/
                    
                    /*Image(systemName: imageName)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .padding([.leading, .trailing], 20)*/

                    Text(detailText)
                        .kerning(2)
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.8)
                        .position(x:geometry.size.width / 2, y: geometry.size.height * 0.3)
                }
            }
            .cornerRadius(50, corners: .allCorners)
        }
    }
}

struct TeamViewDetailOverlay_Previews: PreviewProvider {
    static var previews: some View {
        TeamViewDetailOverlay(detailText: "Trick Question", headerText: "Overview", imageName: "cloud.sun")
    }
}
