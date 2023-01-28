//  Created by Maciej Gorecki on 18/12/2022.

import Foundation

struct Product {
  let name: String
  let price: String

  let imageUrl: URL
}

extension Product {
  static let mocks: [Self] = [
    .init(name: "Coat", price: "$14.99", imageUrl: .init(string: "https://i.pravatar.cc/300")!),
    .init(name: "Coat2", price: "$14.99", imageUrl: .init(string: "https://i.pravatar.cc/300")!),
    .init(name: "Coat3", price: "$14.99", imageUrl: .init(string: "https://i.pravatar.cc/300")!),
    .init(name: "Coat4", price: "$14.99", imageUrl: .init(string: "https://i.pravatar.cc/300")!),
    .init(name: "Coat5", price: "$14.99", imageUrl: .init(string: "https://i.pravatar.cc/300")!)
  ]
}
