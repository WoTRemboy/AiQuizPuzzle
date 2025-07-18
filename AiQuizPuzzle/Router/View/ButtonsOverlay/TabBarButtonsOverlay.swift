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
        HStack {
            leftSideButtons
            rightSideButtons
        }
        .transition(.scale.combined(with: .opacity))
        .padding(.bottom, contentHeight + 36)
        .padding(.horizontal, 16)
    }
    
    private var leftSideButtons: some View {
        HStack(spacing: 32) {
            TabBarMenuButton(title: Texts.TabBar.difficulty) {}
                .offset(y: -5)
            
            TabBarMenuButton(title: Texts.TabBar.raiting) {}
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var rightSideButtons: some View {
        HStack(spacing: 32) {
            TabBarMenuButton(title: Texts.TabBar.create) {}
            
            TabBarMenuButton(title: Texts.TabBar.quiz) {}
                .offset(y: -5)
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
    }
}

#Preview {
    TabBarButtonsOverlay(contentHeight: 64)
}
