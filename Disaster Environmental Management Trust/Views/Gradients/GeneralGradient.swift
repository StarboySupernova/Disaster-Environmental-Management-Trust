//
//  GeneralGradient.swift
//  Disaster Environmental Management Trust
//
//  Created by user207077 on 12/13/21.
//

import SwiftUI

struct GeneralGradient: View {
    var gradient: Gradient {
        
        let color1 = Color("gradient-top")
        let color2 = Color("gradient-bottom")
        let background = Color("background")
        
        return Gradient(stops: [
            Gradient.Stop(color: background, location: 0),
            Gradient.Stop(color: background, location: 0.1),
            Gradient.Stop(color: color1, location: 0.5),
            Gradient.Stop(color: color2, location: 1)
        ])
        
    }
    
    var body: some View {
        LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}

struct GeneralGradient_Previews: PreviewProvider {
    static var previews: some View {
        GeneralGradient()
            .frame(width: 300, height: 300)
            .previewLayout(.sizeThatFits)
    }
}
