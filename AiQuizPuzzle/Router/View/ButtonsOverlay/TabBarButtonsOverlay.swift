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
            ForEach(TabRouter.Tab.allCases, id: \.self) { tab in
                let offsetNeeded = (tab == TabRouter.Tab.allCases.first
                                    || tab == TabRouter.Tab.allCases.last)
                
                TabBarMenuButton(image: tab.icon) {}
                    .offset(y: offsetNeeded ? -5 : 0)
            }
        }
        .transition(.scale.combined(with: .opacity))
        .padding(.bottom, contentHeight + 36)
    }
}

#Preview {
    TabBarButtonsOverlay(contentHeight: 64)
}
