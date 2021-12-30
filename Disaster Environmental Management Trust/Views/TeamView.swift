//
//  TeamView.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/28/21.
//

import SwiftUI

struct TeamView: View {
    
    var detailText: String = ""
    var headerText: String = ""
    var imageName: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                Image("demtTeam")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .blur(radius: 4)
                    .overlay {
                        TeamViewDetailOverlay(detailText: detailText, headerText: headerText, imageName: imageName)
                    }
                MainGradientBackground()
                    .opacity(0.3)
            }
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView(detailText: "Trick Question")
    }
}
