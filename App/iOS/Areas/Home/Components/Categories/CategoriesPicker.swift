//  Created by Maciej Gorecki on 17/12/2022.

import SwiftUI

struct CategoriesPicker: View {
  let categories: [Category]
  @Binding var selectedCategory: Category

  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      LazyHStack {
        ForEach(categories, id: \.self) { category in
          Text(category.name)
            .font(.caption)
            .lineLimit(1)
            .foregroundColor(
              selectedCategory == category
              ? .white
              : .gray
            )
            .padding(.horizontal)
            .padding(.vertical, 10)
            .background(
              selectedCategory == category
              ? Color.black
              : Color.white
            )
            .clipShape(RoundedRectangle(
              cornerRadius: 16,
              style: .continuous
            ))
            .overlay(
              RoundedRectangle(
                cornerRadius: 12,
                style: .continuous
              )
              .stroke(
                .gray.opacity(0.2),
                lineWidth: 1
              )
            )
            .onTapGesture {
              selectedCategory = category
            }
        }
      }
      .padding(.horizontal, 24)
    }
  }
}

struct CategoriesPicker_Previews: PreviewProvider {
  static var previews: some View {
    CategoriesPicker(
      categories: Category.allCases,
      selectedCategory: .constant(.all)
    )
  }
}
