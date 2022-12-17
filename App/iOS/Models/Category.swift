//  Created by Maciej Gorecki on 17/12/2022.

import Foundation

enum Category {
  case all
  case coats
  case shoes
  case dresses
  case shirts
  case socks
}

extension Category: CaseIterable {}

extension Category {
  var name: String {
    switch self {
    case .all:
      return "All"
    case .coats:
      return "Coats"
    case .shoes:
      return "Shoes"
    case .dresses:
      return "Dresses"
    case .shirts:
      return "Shirts"
    case .socks:
      return "Socks"
    }
  }
}
