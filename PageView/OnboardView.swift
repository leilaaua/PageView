//
//  OnboardView.swift
//  PageView
//
//  Created by leila on 26.07.2022.
//

import SwiftUI

struct OnboardView: View {
   
    var intro: Intro
    
    var body: some View {
        VStack(spacing: 20) {
            Image(intro.image)
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
            .foregroundColor(.teal)
            
            Text(intro.title)
                .font(.title.bold())
                .multilineTextAlignment(.center)
            
            Text(intro.description)
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 40)
    }
    
    func nextPage() {
        
    }
}
struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView(intro: Intro.getIntros().first!)
    }
}
