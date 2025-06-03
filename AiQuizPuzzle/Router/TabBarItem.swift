//
//  TabBarItem.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 02/06/2025.
//

import SwiftUI

struct TabBarItem: View {
    @EnvironmentObject private var router: TabRouter
    
    private let tab: TabRouter.Tab
    private let image: Image
    
    init(tab: TabRouter.Tab, image: Image) {
        self.tab = tab
        self.image = image
    }
    
    internal var body: some View {
        Button {
            router.selected = tab
        } label: {
            image
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .foregroundStyle(
                    router.selected == tab
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
        .environmentObject(TabRouter())
}
