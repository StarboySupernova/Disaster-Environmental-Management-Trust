//
//  About Us.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/26/21.
//

import SwiftUI
import StepperView

struct AboutUs: View {
    
    let DemtData = DemtOrgData()
    
    @State var showSheet = false
    @State var selectedGroup: InfoGrouping? = nil
    
    @State var showLeadingGroup = false
    @State var showLeadMiddleGroup = false
    @State var showMiddleGroup = false
    @State var showMiddleTrailingGroup = false
    @State var showTrailingGroup = false
    
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
        ZStack {
            ContainerView {
                HStack {
                    Text("Organizational Profile")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .kerning(2)
                }
            } bottomContent: {
                GeometryReader {geometry in
                    VStack {
                        Image("demtTeam")
                            .resizedToFill(width: geometry.size.width, height: geometry.size.height * 0.3)
                        navigationButton
                    }
                }
            }
            .sheet(isPresented: $showSheet, onDismiss: {}, content: {
                if let selectedGroup = selectedGroup {
                    switch selectedGroup {
                    case .leadingGroup :
                        infoGroups(selectedGroup)
                    case .leadMiddleGroup :
                        infoGroups(selectedGroup)
                    case .middleGroup:
                        infoGroups(selectedGroup)
                    case .middleTrailingGroup:
                        infoGroups(selectedGroup)
                    case .trailingGroup:
                        infoGroups(selectedGroup)
                    }
                }
            })
        }
    }
    
    var navigationButton: some View {
        Button(action: {
            showSheet = true
            selectedGroup = .leadingGroup
        }, label: {
            Text("Next")
                .fontWeight(.bold)
                .padding([.leading, .trailing], 5)
        })
            .padding(.bottom, 10)
            .buttonStyle(EmbossedButtonStyle())
    }
    
    /*
     var historyButton: some View {
         Button(action: {
             showSheet = true
             showHistory = true
             exerciseSheet = .history
         }, label: {
             Text(NSLocalizedString("History", comment: "view user activity"))
                 .fontWeight(.bold)
                 .padding([.leading, .trailing], 5)
         })
             .padding(.bottom, 10)
             .buttonStyle(EmbossedButtonStyle())
     }
     */
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs()
    }
}
