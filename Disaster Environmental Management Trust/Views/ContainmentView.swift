//
//  ContainmentView.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/28/21.
//

import SwiftUI

struct ContainmentView<Content: View>: View {
    
    var content: Content
    
    init(@ViewBuilder content: () -> Content){
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color("background"))
            VStack{
                Spacer()
                Rectangle()
                    .frame(height: 25)
                    .foregroundColor(Color("background"))
            }
            content
        }
    }
}

struct ContainmentView_Previews: PreviewProvider {
    static var previews: some View {
        ContainmentView{
            VStack {
                RaisedButton(buttonText: "Hello!", action: {})
                    .padding(50)
                Button("Tap me!"){}
                    .buttonStyle(EmbossedButtonStyle(buttonShape: .round))
            }
        }
    }
}
