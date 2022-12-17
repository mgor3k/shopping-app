//  Created by Maciej Gorecki on 17/12/2022.

import SwiftUI

struct HomeView: View {
  @State var selectedCategory: Category = .all

  var body: some View {
    VStack(spacing: 24) {
      SearchBar()

      BannerView(
        title: "New\nCollection",
        backgroundColor: .brown
      )

      CategoriesBar(
        onViewAll: {}
      )
      .padding(.top, 8)

      CategoriesPicker(
        category: $selectedCategory
      )

      Spacer()
    }
    .padding(24)
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
