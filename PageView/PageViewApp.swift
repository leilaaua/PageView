//
//  PageViewApp.swift
//  PageView
//
//  Created by leila on 26.07.2022.
//

import SwiftUI

@main
struct PageViewApp: App {
    @State var isOnBoarding = true
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                ContentView()
            } else {
                HomeView()
            }
        }
    }
}
