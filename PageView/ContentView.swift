//
//  ContentView.swift
//  PageView
//
//  Created by leila on 26.07.2022.
//

import SwiftUI

struct ContentView: View {
//    @AppStorage("isOnBoarding") var isOnBoarding: Bool?
   
    private var intros = Intro.getIntros()
    
    var body: some View {
        ZStack {
            TabView {
                ForEach(intros) { intro in
                    OnboardView(intro: intro)
                    
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            
//            Button(action: { isOnBoarding = false }) {
//                Text(buttonTitle)
//                    .foregroundColor(.black)
//                    .padding()
//                    .background(
//                        Capsule().strokeBorder(Color.black, lineWidth: 1.5))
//                    .frame(width: 70)
//            }
//            .padding(.leading, 200)
//            .padding(.top, 700)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
