//  Created by Maciej Gorecki on 17/12/2022.

import SwiftUI

struct BannerView: View {
  let title: String
  let backgroundColor: Color

  var body: some View {
    HStack {
      VStack {
        Text(title)
          .font(.title)
          .padding(.leading, 8)

        Button("Shop now", action: {})
          .buttonStyle(.primaryWhite)
      }
    }
    .padding()
    .background(backgroundColor)
    .clipShape(RoundedRectangle(
      cornerRadius: 16,
      style: .continuous
    ))
  }
}

struct BannerView_Previews: PreviewProvider {
  static var previews: some View {
    BannerView(
      title: "New\nCollection",
      backgroundColor: .brown
    )
  }
}
