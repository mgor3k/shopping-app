//  Created by Maciej Gorecki on 17/12/2022.

import SwiftUI

struct SearchBar: View {
  var body: some View {
    HStack(spacing: 12) {
      Image(systemName: "magnifyingglass")
      Text("Search here")
        .font(.callout)
        .foregroundColor(.gray)
      Spacer()
    }
    .frame(maxWidth: .infinity)
    .padding()
    .background(Color.gray.opacity(0.2))
    .clipShape(RoundedRectangle(
      cornerRadius: 16,
      style: .continuous
    ))
  }
}

struct SearchBar_Previews: PreviewProvider {
  static var previews: some View {
    SearchBar()
      .padding()
  }
}
