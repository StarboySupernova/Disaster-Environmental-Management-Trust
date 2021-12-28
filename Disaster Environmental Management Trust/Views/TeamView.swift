//
//  TeamView.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/28/21.
//

import SwiftUI

struct TeamView: View {
    
    @Binding var selectedTab : Int
    @State private var showHistory = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                //You embed the top VStack in GeometryReader so that you’ll be able to determine the size available for the container view
                HeaderView(selectedTab: $selectedTab, titleText: "Organizational Profile")
                Spacer()
                ContainmentView {
                    VStack {
                        LandingView.images
                        LandingView.welcomeText
                        getStartedButton
                        Spacer()
                    }
                }
                .frame(height: geometry.size.height * 0.8)
            }
        }
    }
        
    var getStartedButton: some View {
            RaisedButton(
                buttonText: NSLocalizedString("Get Started", comment: "invitation"),
                action: {selectedTab = 0
                })
                .padding()
        }
        
    struct TeamView_Previews: PreviewProvider {
        static var previews: some View {
            TeamView(selectedTab: .constant(9))
        }
    }

}
