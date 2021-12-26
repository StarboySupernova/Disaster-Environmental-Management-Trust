//
//  MainBottomTabBar.swift
//  Disaster Environmental Management Trust
//
//  Created by user207077 on 12/25/21.
//

import SwiftUI

struct MainBottomTabBar: View {
    
    @Binding var selection: Int
    
    var body: some View {
        HStack(alignment: .lastTextBaseline){
            CustomTabBarItem(iconName: "house.circle.fill", label: "Home", selection: $selection, tag: 0)
            CustomTabBarItem(iconName: "play.tv.fill", label: "Film", selection: $selection, tag: 1)
            CustomTabBarItem(iconName: "globe.europe.africa.fill", label: "Operations", selection: $selection, tag: 2)
            CustomTabBarItem(iconName: "waveform.and.mic", label: "Podcasts", selection: $selection, tag: 3)
            CustomTabBarItem(iconName: "paperplane.circle.fill", label: "Forum", selection: $selection, tag: 4)
            CustomTabBarItem(iconName: "person.3.fill", label: "About Us", selection: $selection, tag: 5)
        }
        .background(
            GeometryReader { parentGeometry in
                Rectangle()
                    .fill(Color(UIColor.systemGray2))
                    .frame(width: parentGeometry.size.width, height: 0.5)
                    .position(x: parentGeometry.size.width / 2, y: 0)
                    .cornerRadius(90)
            }
        )
        .background(Color(UIColor.systemGray6))
    }
}

struct MainBottomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainBottomTabBar(selection: .constant(1))
    }
}
