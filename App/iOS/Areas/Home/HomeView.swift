//  Created by Maciej Gorecki on 17/12/2022.

import SwiftUI

struct HomeView: View {
  @State var selectedCategory: Category = .all
  @State var products: [Product] = [
    .init(name: "Coat", price: "$14.99"),
    .init(name: "Coat2", price: "$14.99"),
    .init(name: "Coat3", price: "$14.99")
  ]

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

      GeometryReader { proxy in
        ScrollView {
          LazyVGrid(columns: [.init(spacing: 24), .init()], spacing: 12) {
            ForEach(products, id: \.name) { product in
              HomeProductView(product: product)
                .frame(height: proxy.size.width / 2)
            }
          }
          .padding(24)
        }
      }

      Spacer()
    }
    .padding(.top, 24)
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
