//
//  Network.swift
//  PageView
//
//  Created by leila on 02.08.2022.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()
  private(set) lazy var apollo = ApolloClient(url: URL(string: "https://staging.raceroom.live/graph/graphql")!)
}
