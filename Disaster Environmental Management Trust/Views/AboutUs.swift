//
//  About Us.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/26/21.
//

import SwiftUI
import StepperView

struct AboutUs: View {
    
    let texts = [DemtOrgData.DemtAboutUsPitstops.p1, DemtOrgData.DemtAboutUsPitstops.p2, DemtOrgData.DemtAboutUsPitstops.p3, DemtOrgData.DemtAboutUsPitstops.p4, DemtOrgData.DemtAboutUsPitstops.p5,DemtOrgData.DemtAboutUsPitstops.p6,DemtOrgData.DemtAboutUsPitstops.p7,DemtOrgData.DemtAboutUsPitstops.p8,DemtOrgData.DemtAboutUsPitstops.p9,DemtOrgData.DemtAboutUsPitstops.p10,DemtOrgData.DemtAboutUsPitstops.p11,DemtOrgData.DemtAboutUsPitstops.p12,DemtOrgData.DemtAboutUsPitstops.p13, ]
    
    let headers = ["Overview", "Governance", "Structuring", "Our Objectives", "Vision", "Mission", "Values", "Geographical Areas of Operation", "Partnerships", "Affiliations", "Approaches" , "Humanitarian Assistance", "Supporting Smallholder Farmers"]
    
    let imageNames = ["eyeglasses", "hammer.fill", "arrow.3.trianglepath", "lightbulb.fill", "eye.square.fill", "figure.walk.diamond.fill", "gift.circle.fill", "globe.europe.africa.fill", "figure.stand.line.dotted.figure.stand", "puzzlepiece.fill", "key.fill", "figure.wave", "heart.fill"]
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<13){ index in
                    NavigationLink{
                        TeamView(detailText: texts[index], headerText: headers[index], imageName: imageNames[index])
                    } label: {
                        Label(headers[index], systemImage: imageNames[index])
                    }
                }
                .padding()
            }
            .navigationTitle("Organizational Overview")
        }
    }
    
    
    
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs()
    }
}
