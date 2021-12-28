//
//  About Us.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/26/21.
//

import SwiftUI
import StepperView
import simd

struct AboutUs: View {
    
    let DemtData = DemtOrgData()
    
    @State private var selectedTab = 9
    
    enum InfoGrouping: CaseIterable, Identifiable {
        var id: Int {hashValue}
        
        case leadingGroup
        case leadMiddleGroup
        case middleGroup
        case middleTrailingGroup
        case trailingGroup       //using CaseIterable and allCases
    }
    
    
    func infoGroups(_ contentToDisplay: InfoGrouping) -> some View {
        
        switch contentToDisplay {
        case .leadingGroup:
            return StepperView()
                .addSteps(DemtData.leadingSteps)
                .indicators(DemtData.leadingIndicators)
                .addPitStops(DemtData.leadingPitStops)
                .pitStopLineOptions(DemtData.leadingPitStopLineOptions)
                .autoSpacing(true)
                .padding()
            
        case .leadMiddleGroup:
            return StepperView()
                .addSteps(DemtData.leadMiddleSteps)
                .indicators(DemtData.leadMiddleIndicators)
                .addPitStops(DemtData.leadMiddlePitStops)
                .pitStopLineOptions(DemtData.leadMiddlePitStopLineOptions)
                .autoSpacing(true)
                .padding()
            
        case .middleGroup:
            return StepperView()
                .addSteps(DemtData.middleSteps)
                .indicators(DemtData.middleIndicators)
                .addPitStops(DemtData.middlePitStops)
                .pitStopLineOptions(DemtData.middlePitStopLineOptions)
                .autoSpacing(true)
                .padding()
            
        case .middleTrailingGroup:
            return StepperView()
                .addSteps(DemtData.middleTrailingSteps)
                .indicators(DemtData.middleTrailingIndicators)
                .addPitStops(DemtData.middleTrailingPitStops)
                .pitStopLineOptions(DemtData.middleTrailingPitStopLineOptions)
                .autoSpacing(true)
                .padding()
            
        case .trailingGroup:
            return StepperView()
                .addSteps(DemtData.trailingSteps)
                .indicators(DemtData.trailingIndicators)
                .addPitStops(DemtData.trailingPitStops)
                .pitStopLineOptions(DemtData.trailingPitStopLineOptions)
                .autoSpacing(true)
                .padding()
        }
        
    }
    /*
     ZStack {
         GradientBackground()
         TabView(selection: $selectedTab) {
             WelcomeView(selectedTab: $selectedTab)
                 .tag(9)
             ForEach(0 ..< Exercise.exercises.count){ index in
                 ExerciseView(selectedTab: $selectedTab, index: index)
                     .tag(index)
             }
         }
         .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
     }

     */
    
    /*
     ScrollViewReader { scrollview in
         ScrollView([.horizontal]) {
             HStack(alignment: .center) {
                 ForEach(InfoGrouping.allCases){ index in
                     HStack{
                         infoGroups(index)
                     }
                 }
             }
         }
     }
     */
    
    
    var body: some View {
        ZStack{
            MainGradientBackground()
            TabView(selection: $selectedTab){
                TeamView(selectedTab: $selectedTab)
                    .tag(9)
                ForEach(InfoGrouping.allCases){index in
                    infoGroups(index)
                        .tag(index)
                }
            }
        }
    }
    
    
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs()
    }
}
