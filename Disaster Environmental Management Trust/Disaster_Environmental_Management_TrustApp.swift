//
//  Disaster_Environmental_Management_TrustApp.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 11/30/21.
//

import SwiftUI

@main
struct Disaster_Environmental_Management_TrustApp: App {
    
    @StateObject private var modelData = ModelData()

    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
