//
//  CustomTabBar.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 02/06/2025.
//

import SwiftUI

struct CustomTabBar: View {
    @EnvironmentObject private var appRouter: AppRouter
        
    private let contentHeight: CGFloat = 64
    
    internal var body: some View {
        ZStack(alignment: .bottom) {
            if appRouter.isExpanded {
                gradient
                TabBarButtonsOverlay(contentHeight: contentHeight)
            }
            
            HStack(spacing: 0) {
                ForEach(AppRouter.Tab.leftCases, id: \.self) { tab in
                    TabBarItem(tab: tab, image: tab.icon)
                }
                
                TabBarPlusButton(isExpanded: appRouter.isExpanded) {
                    withAnimation(.spring(duration: 0.3)) {
                        appRouter.isExpanded.toggle()
                    }
                }
                .offset(y: -(contentHeight / 2))
                .frame(width: 90, height: 90)
                
                ForEach(AppRouter.Tab.rightCases, id: \.self) { tab in
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
                appRouter.setExpanded(to: false)
            }
        }
        .zIndex(0)
    }
}

#Preview {
    CustomTabBar()
        .frame(maxHeight: .infinity, alignment: .bottom)
        .background(BackgroundView())
        .environmentObject(AppRouter())
}
