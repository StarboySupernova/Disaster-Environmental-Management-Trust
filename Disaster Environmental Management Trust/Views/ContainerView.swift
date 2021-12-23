//
//  ContainerView.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/21/21.
//

import SwiftUI

struct ContainerView<Content:View, BottomContent: View>: View {
    
    var content: Content
    var bottomContent: BottomContent
    
    init(@ViewBuilder content: () -> Content, @ViewBuilder bottomContent: () -> BottomContent){
        self.content = content()
        self.bottomContent = bottomContent()
    }
    
    var gradient: Gradient {
        let color1 = Color(.black)
        let color2 = Color(.white)
        
        return Gradient(stops: [Gradient.Stop(color: color1, location: 0), Gradient.Stop(color: color2, location: 0.3)])
    }
    
    var body: some View {
        
            ZStack {
                GeometryReader { geometry in
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("background"))
                        LinearGradient(gradient: Gradient(colors: [Color("gradient-top"), .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            .opacity(0.7)
                            .cornerRadius(40, corners: [.bottomLeft])
                            .frame(width: geometry.size.width, height: geometry.size.height * 0.7)
                            .position(x: geometry.size.width / 2, y: 280)
                            .edgesIgnoringSafeArea(.top)
                    }
                
                    
                content
                    .position(x: geometry.size.width / 2, y: geometry.size.height * 0.1)
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(.black, lineWidth: 2)
                        .opacity(0.08)
                        //.frame(width: geometry.size.width, height: 2)
                    
                bottomContent
                        .position(x: geometry.size.width / 2, y: geometry.size.height * 0.83)
                        
                
                VStack{
                    Spacer()
                    HStack(alignment: .lastTextBaseline, spacing: 0){
                        Rectangle()
                            //.foregroundColor(Color("gradient-bottom"))
                        LinearGradient(gradient: Gradient(colors: [.white, Color("gradient-top")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            .opacity(0.4)
                            .cornerRadius(50, corners: [.topRight])
                            .frame(width: geometry.size.width, height: geometry.size.height * 0.375)
                            //.edgesIgnoringSafeArea(.bottom)
                    }
                    
                    //bottomContent
                    
                }
        }
        
        }
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView(content: {Button(action: {}, label: {Text("Test Button")})}, bottomContent: {Button(action: {}, label: {Text("Test Button 2")})})
    }
}
