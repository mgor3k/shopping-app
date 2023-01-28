//  Created by Maciej Gorecki on 18/12/2022.

import SwiftUI

struct HomeProductView: View {
  let product: Product

  var body: some View {
    VStack(alignment: .leading) {
      Color.blue
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
