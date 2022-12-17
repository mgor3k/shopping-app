//  Created by Maciej Gorecki on 17/12/2022.

import SwiftUI

struct CategoriesPicker: View {
  @Binding var category: Category

  var body: some View {
    Text("Hello, World!")
  }
}

struct CategoriesPicker_Previews: PreviewProvider {
  static var previews: some View {
    CategoriesPicker(
      category: .constant(.all)
    )
  }
}
