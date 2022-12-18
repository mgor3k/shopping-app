//  Created by Maciej Gorecki on 17/12/2022.

import SwiftUI

struct CategoriesBar: View {
  let onViewAll: () -> Void

  var body: some View {
    VStack {
      HStack {
        Text("Categories")
          .bold()

        Spacer()

        Button(
          "View all",
          action: onViewAll
        )
      }
    }
  }
}

struct CategoriesBar_Previews: PreviewProvider {
  static var previews: some View {
    CategoriesBar(onViewAll: {})
      .padding()
  }
}
