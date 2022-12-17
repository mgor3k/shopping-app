//  Created by Maciej Gorecki on 17/12/2022.

import SwiftUI

struct HomeView: View {
  var body: some View {
    VStack {
      SearchBar()

      BannerView(
        title: "New\nCollection",
        backgroundColor: .brown
      )

      Spacer()
    }
    .padding()
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
