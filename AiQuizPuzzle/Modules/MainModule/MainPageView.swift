//
//  MainPageView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 02/06/2025.
//

import SwiftUI

struct MainPageView: View {
    internal var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Hello")
                .frame(maxWidth: .infinity)
        }
        .background(background)
    }
    
    private var background: some View {
        BackgroundView()
            .ignoresSafeArea()
    }
}

#Preview {
    MainPageView()
}
