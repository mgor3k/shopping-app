//  Created by Maciej Gorecki on 18/12/2022.

import SwiftUI

struct HomeProductView: View {
  let product: Product

  var body: some View {
    VStack(alignment: .leading) {
      Color.blue

      Text(product.name)
      Text(product.price)
    }
  }
}

struct HomeProductView_Previews: PreviewProvider {
  static var previews: some View {
    HomeProductView(
      product: .init(
        name: "Product name",
        price: "$12.99"
      )
    )
  }
}
