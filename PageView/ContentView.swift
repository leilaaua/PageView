//
//  ContentView.swift
//  PageView
//
//  Created by leila on 26.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isOnBoarding = true
    @State var currentPage = 0
    @State var buttonTitle = "Next"
    private var intros = Intro.getIntros()
    
    var body: some View {
        ZStack {
            TabView {
                OnboardView(intro: intros[currentPage])
            }
            
            .tabViewStyle(.page(indexDisplayMode: .always ))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            
            Button(action: nextPage) {
                Text(buttonTitle)
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
        if currentPage < intros.count - 1 {
            currentPage += 1
        } else {
            buttonTitle = "Done"
            isOnBoarding = false
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
