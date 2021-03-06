//
//  EmbossedButton.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/24/21.
//

// I opted not to include rounded raised buttons, the only button shape for raised buttons is Capsule
// Embossed Buttons can be round here


import SwiftUI
enum EmbossedButtonShape {
    case round, capsule
}

struct EmbossedButtonStyle: ButtonStyle {
    
    var buttonShape = EmbossedButtonShape.capsule
    
    func makeBody(configuration: Configuration) -> some View {
        let shadow = Color("drop-shadow")
        let highlight = Color("drop-highlight")
        return configuration.label
            .padding(10)
            .background(
                GeometryReader{ geometry in
                    shape(size: geometry.size)
                        .foregroundColor(Color("background"))
                        .shadow(color: shadow, radius: 1, x: 2, y: 2)
                        .shadow(color: highlight, radius: 1, x: -2, y: -2)
                        .offset(x: -1, y: -1)
                    //You offset the capsule outline by half the width of the stroke, which centers the content
                })
    }
    
    @ViewBuilder
    func shape(size: CGSize) -> some View {
        switch buttonShape {
        case .round:
            Circle() //takes its diameter from the height of the button. We will use GeometryReader to find out the size of the view, and make the diameter larger than the button contents
                .stroke(Color("background"), lineWidth: 2)
                .frame(
                    width: max(size.width, size.height),
                    height: max(size.width, size.height))
                .offset(x: -1)
                .offset(y: -max(size.width, size.height)/2 + min(size.width, size.height)/2)
            //Here you set the frame to the larger of the width or height
        case .capsule:
            Capsule()
                .stroke(Color("background"), lineWidth: 2)
        }
        
    }
}

struct EmbossedButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Button(action: {}){
                Text(NSLocalizedString("History", comment: "user's exercises"))
                        .fontWeight(.bold)
                }
                .buttonStyle(EmbossedButtonStyle())
                .padding(40)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
            
            Button(action: {}){
                Text(NSLocalizedString("History", comment: "user's exercises"))
                        .fontWeight(.bold)
                }
            .buttonStyle(EmbossedButtonStyle(buttonShape: .round))
                .padding(40)
                .previewLayout(.sizeThatFits)
        }
    }
}

