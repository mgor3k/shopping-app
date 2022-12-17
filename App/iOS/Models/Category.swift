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
