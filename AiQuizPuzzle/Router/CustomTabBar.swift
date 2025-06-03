//
//  CustomTabBar.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 02/06/2025.
//

import SwiftUI

struct CustomTabBar: View {
    @EnvironmentObject private var router: TabRouter
        
    internal var body: some View {
        ZStack(alignment: .bottom) {
            HStack(spacing: 0) {
                ForEach(TabRouter.Tab.allCases, id: \.self) { tab in
                    TabBarItem(tab: tab, image: tab.icon)
                }
            }
            .frame(height: 65)
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
}

#Preview {
    CustomTabBar()
        .environmentObject(TabRouter())
}
