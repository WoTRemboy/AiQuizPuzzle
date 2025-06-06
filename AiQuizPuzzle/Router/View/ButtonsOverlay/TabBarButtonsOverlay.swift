//
//  TabBarButtonsOverlay.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 06/06/2025.
//

import SwiftUI

struct TabBarButtonsOverlay: View {
    
    private let contentHeight: CGFloat
    
    init(contentHeight: CGFloat) {
        self.contentHeight = contentHeight
    }
    
    internal var body: some View {
        HStack(spacing: 32) {
            TabBarMenuButton(title: Texts.TabBar.difficulty) {}
                .offset(y: -5)
            
            TabBarMenuButton(title: Texts.TabBar.raiting) {}
            
            TabBarMenuButton(title: Texts.TabBar.create) {}
            
            TabBarMenuButton(title: Texts.TabBar.quiz) {}
                .offset(y: -5)
        }
        .transition(.scale.combined(with: .opacity))
        .padding(.bottom, contentHeight + 36)
    }
}

#Preview {
    TabBarButtonsOverlay(contentHeight: 64)
}
