//
//  CategoryHome.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/18/21.
//

/*

Abstract:
A view showing featured landmarks above a list of landmarks grouped by category.
*/

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showingProfile = false
    @Binding var tabVisible: Bool

    var body: some View {
        NavigationView {
            List {
                PageView(pages: modelData.featuresContent.map {FeatureCard(podcast: $0)})
                    .aspectRatio(3/2, contentMode: .fit)
                    .listRowInsets(EdgeInsets())

                ForEach(modelData.podcastCategories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.podcastCategories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Podcasts")
            .toolbar {
                HStack {
                    Button {
                        showingProfile.toggle()
                    } label: {
                        Label("User Profile", systemImage: "person.crop.circle")
                    }
                
                    Button {
                        tabVisible = true
                    } label: {
                        Label("Back", systemImage: "arrowshape.turn.up.backward.fill")
                    }
                }
                
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environmentObject(modelData)
            }
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome(tabVisible: .constant(false))
            .environmentObject(ModelData())
    }
}
