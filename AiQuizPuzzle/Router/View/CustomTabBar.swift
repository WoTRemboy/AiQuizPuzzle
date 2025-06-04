//
//  CustomTabBar.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 02/06/2025.
//

import SwiftUI

struct CustomTabBar: View {
    @EnvironmentObject private var router: TabRouter
    
    private let contentHeight: CGFloat = 64
        
    internal var body: some View {
        HStack(spacing: 0) {
            ForEach(TabRouter.Tab.leftCases, id: \.self) { tab in
                TabBarItem(tab: tab, image: tab.icon)
            }
            
            TabBarPlusButton() {}
                .offset(y: -(contentHeight / 2))
                .frame(width: 90, height: 90)
            
            ForEach(TabRouter.Tab.rightCases, id: \.self) { tab in
                TabBarItem(tab: tab, image: tab.icon)
            }
        }
        .frame(height: contentHeight)
        .padding(.horizontal, 16)
        .background(background)
    }
    
    private var background: some View {
        Color.TabbarColors.background
            .shadow(color: .black.opacity(0.4),
                    radius: 4, y: -2)
            .ignoresSafeArea()
    }
}

#Preview {
    CustomTabBar()
        .environmentObject(TabRouter())
}
