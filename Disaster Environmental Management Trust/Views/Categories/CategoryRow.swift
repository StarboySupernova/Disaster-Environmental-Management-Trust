/*

Abstract:
A view showing a scrollable list of landmarks.
*/

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Podcast]

    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { podcast in
                        NavigationLink {
                            PodcastDetail(podcast: podcast)
                        } label: {
                            CategoryItem(podcast: podcast)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var podcasts = ModelData().podcasts

    static var previews: some View {
        CategoryRow(
            categoryName: podcasts[0].category.rawValue,
            items: Array(podcasts.prefix(4))
        )
    }
}
