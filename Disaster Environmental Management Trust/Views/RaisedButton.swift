//
//  RaisedButton.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/24/21.
//

import SwiftUI

struct RaisedButton: View {
    
    let buttonText: String
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }){
            Text(buttonText)
                .raisedButtonTextStyle()
        }
        .buttonStyle(RaisedButtonStyle())
        
    }
}

extension Text {
    func raisedButtonTextStyle () -> some View {
        self
            .font(.body)
            .fontWeight(.bold)
    }
}

struct RaisedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding([.top, .bottom], 12)
            .background(
                Capsule()
                    .foregroundColor(Color("background"))
                    .shadow(color: Color("drop-shadow"), radius: 4, x: 6, y: 6)
                    .shadow(color: Color("drop-highlight"), radius: 4, x: -6, y: -6)
                //The buttons work in Dark Mode too, because each color in the asset catalog has a value for both Light Mode and Dark Mode
            )
        
    }
}

struct RaisedButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            RaisedButton(buttonText: "Get Started"){print("Hello World")}
                .padding(20)
                .buttonStyle(RaisedButtonStyle()) //seems here that if a type has no properties but only methods,the methods are automatically called during initialization
            
        }
        .background(Color("background"))
        .previewLayout(.sizeThatFits)
        
    }
}

