//
//  TabBarItem.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 02/06/2025.
//

import SwiftUI

struct TabBarItem: View {
    @EnvironmentObject private var appRouter: AppRouter
    
    private let tab: AppRouter.Tab
    private let image: Image
    
    init(tab: AppRouter.Tab, image: Image) {
        self.tab = tab
        self.image = image
    }
    
    internal var body: some View {
        Button {
            withAnimation(.easeInOut(duration: 0.1)) {
                appRouter.setTab(to: tab)
            }
        } label: {
            image
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .foregroundStyle(
                    appRouter.selectedTab == tab
                    ? Color.TabbarColors.selected
                    : Color.TabbarColors.unselected
                )
                .frame(height: 34)
                .padding(.vertical, 12)
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    TabBarItem(tab: .home, image: Image.Tabbar.home)
        .environmentObject(AppRouter())
}
