//
//  HeaderView.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/28/21.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var selectedTab: Int
    let titleText: String
    
    var body: some View {
        VStack {
            Text(titleText)
                .font(.largeTitle)
            HStack {
                ForEach (0..<5) { index in
                    ZStack {
                     Circle()
                       .frame(width: 32, height: 32)
                       .foregroundColor(.black)
                       .opacity(index == selectedTab ? 0.5 : 0)
                     Circle()
                       .frame(width: 16, height: 16)
                       .foregroundColor(.white)
                   }
                    .onTapGesture {
                        selectedTab = index
                    }
                }
            }
            .font(.title2)
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(selectedTab: .constant(0), titleText: "1")
    }
}
