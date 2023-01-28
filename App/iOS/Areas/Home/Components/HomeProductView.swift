//  Created by Maciej Gorecki on 18/12/2022.

import SwiftUI

struct HomeProductView: View {
  let product: Product

  var body: some View {
    VStack(alignment: .leading) {
      AsyncImage(url: product.imageUrl) { phase in
        switch phase {
        case .success(let image):
          image
            .resizable()
        case .failure:
          Color.red
        case .empty:
          Color.gray
        @unknown default:
          Color.purple
        }
      }
        .clipShape(RoundedRectangle(
          cornerRadius: 24,
          style: .continuous
        ))

      Text(product.name)
      Text(product.price)
    }
  }
}

struct HomeProductView_Previews: PreviewProvider {
  static var previews: some View {
    HomeProductView(
      product: Product.mocks[0]
    )
    .padding()
  }
}
