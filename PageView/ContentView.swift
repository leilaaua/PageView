//
//  ContentView.swift
//  PageView
//
//  Created by leila on 26.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?
    @State var currentPage = 0
    @State var buttonTitle = "Next"
    private var intros = Intro.getIntros()
    
    var body: some View {
        ZStack {
            TabView(selection: $currentPage) {
                ForEach(0..<intros.count) { index in
                    OnboardView(intro: intros[index])
                }
            }
            
            .tabViewStyle(.page(indexDisplayMode: .always ))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            
            Button(action: nextPage) {
                Text(currentPage < intros.count - 1 ? "Next" : "Done")
                    .foregroundColor(.black)
                    .padding()
                    .background(
                        Capsule().strokeBorder(Color.black, lineWidth: 1.5))
                    .frame(width: 100)
            }
            .padding(.leading, 200)
            .padding(.top, 700)
        }
    }
    
    func nextPage() {
        if currentPage != intros.count - 1 {
            currentPage += 1
        } else {
            isOnBoarding = false
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


