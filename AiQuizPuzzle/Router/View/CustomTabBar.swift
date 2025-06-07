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
        ZStack(alignment: .bottom) {
            if router.isExpanded {
                gradient
                TabBarButtonsOverlay(contentHeight: contentHeight)
            }
            
            HStack(spacing: 0) {
                ForEach(TabRouter.Tab.leftCases, id: \.self) { tab in
                    TabBarItem(tab: tab, image: tab.icon)
                }
                
                TabBarPlusButton(isExpanded: router.isExpanded) {
                    withAnimation(.spring(duration: 0.3)) {
                        router.isExpanded.toggle()
                    }
                }
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
    }
    
    private var background: some View {
        Color.TabbarColors.background
            .shadow(color: .black.opacity(0.4),
                    radius: 4, y: -2)
            .ignoresSafeArea()
    }
    
    private var gradient: some View {
        LinearGradient(
            colors: [
                Color.clear,
                Color.clear,
                Color.GradientColors.Background.purple
            ],
            startPoint: .top,
            endPoint: .bottom
        )
        .onTapGesture {
            withAnimation(.spring(duration: 0.3)) {
                router.setExpanded(to: false)
            }
        }
        .zIndex(0)
    }
}

#Preview {
    CustomTabBar()
        .frame(maxHeight: .infinity, alignment: .bottom)
        .background(BackgroundView())
        .environmentObject(TabRouter())
}
