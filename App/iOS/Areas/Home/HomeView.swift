//  Created by Maciej Gorecki on 17/12/2022.

import SwiftUI

struct HomeView: View {
  @State var selectedCategory: Category = .all

  var body: some View {
    VStack(spacing: 24) {
      SearchBar()
        .padding(.horizontal, 24)

      BannerView(
        title: "New\nCollection",
        backgroundColor: .brown
      )
      .padding(.horizontal, 24)


      CategoriesBar(
        onViewAll: {}
      )
      .padding(.top, 8)
      .padding(.horizontal, 24)

      CategoriesPicker(
        categories: Category.allCases,
        selectedCategory: $selectedCategory
      )
      .frame(height: 44)

      Spacer()
    }
    .padding(.vertical, 24)
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
