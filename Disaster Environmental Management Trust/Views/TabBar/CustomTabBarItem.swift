//
//  CustomTabBarItem.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/1/21.
//

import SwiftUI

struct CustomTabBarItem: View {
    
    let iconName: String
    let label: String
    var onTap: () -> Void = {}
    let selection: Binding<Int>
    let tag: Int
    
    
    var body: some View {
        VStack (alignment: .center) {
            Image(systemName: iconName)
                .frame(minWidth: 25, minHeight: 25)
            Text(label)
                .font(.caption)
        }
        .padding([.top, .bottom], 5)
        .foregroundColor(fgColor())
        .frame(maxWidth: .infinity) /* This is a trick to get a view to take up all the available space in its parent, by setting maxWidth to .infinity. You can do the same for the height, but in this case it’s not needed. Why does this work? Because in SwiftUI children take up as much space as they need to. Since the child was told that it can take up as much space as it wants (up to “infinity”), without being greedy, it does so
                                     */
        .contentShape(Rectangle())
        .onTapGesture {
            self.selection.wrappedValue = self.tag
        }
    }
    
    private func fgColor () -> Color {
        return self.selection.wrappedValue == self.tag ? Color(UIColor.systemBlue) : Color(UIColor.systemGray)
    }
}

struct CustomTabBarItem_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarItem(iconName: "clock.fill", label: "Recents", selection: .constant(0), tag: 0)
            .previewLayout(.fixed(width: 80, height: 80))
    }
}
