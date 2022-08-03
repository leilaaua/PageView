//
//  HomeView.swift
//  PageView
//
//  Created by leila on 26.07.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.white
            Button(action: getList ) {
                Text("OK")
            }
        }
    }
    
    func getList() {
        Network.shared.apollo.fetch(query: ExampleQueryQuery()) { result in
          switch result {
          case .success(let graphQLResult):
              graphQLResult.data.getCountryMany.first?.fullName
            print("Success! Result: \(graphQLResult)")
          case .failure(let error):
            print("Failure! Error: \(error)")
          }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
