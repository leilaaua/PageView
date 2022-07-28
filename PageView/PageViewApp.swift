//
//  PageViewApp.swift
//  PageView
//
//  Created by leila on 26.07.2022.
//

import SwiftUI

@main
struct PageViewApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding = true
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
