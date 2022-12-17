//  Created by Maciej Gorecki on 17/12/2022.

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
  let backgroundColor: Color

  func makeBody(configuration: Configuration) -> some View {
    configuration
      .label
      .padding(.horizontal)
      .padding(.vertical, 12)
      .background(backgroundColor)
      .clipShape(RoundedRectangle(
        cornerRadius: 12, style: .continuous
      ))
      .opacity(configuration.isPressed ? 0.8 : 1)
  }
}

struct PrimaryButtonStyle_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      Button("Button", action: {})
        .buttonStyle(.primaryWhite)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.blue)
  }
}

extension ButtonStyle where Self == PrimaryButtonStyle {
    static var primaryWhite: Self {
      PrimaryButtonStyle(
        backgroundColor: .white
      )
    }
}

