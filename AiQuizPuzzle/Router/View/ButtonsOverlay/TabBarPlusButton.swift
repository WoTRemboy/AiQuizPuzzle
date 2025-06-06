//
//  TabBarPlusButton.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 03/06/2025.
//

import SwiftUI

struct TabBarPlusButton: View {
    
    private let isExpanded: Bool
    private let action: () -> Void
    
    init(isExpanded: Bool, action: @escaping () -> Void) {
        self.isExpanded = isExpanded
        self.action = action
    }
    
    internal var body: some View {
        Button {
            action()
        } label: {
            if isExpanded {
                buttonContent(
                    icon: Image.Tabbar.AddButton.Expanded.icon,
                    background: Image.Tabbar.AddButton.Expanded.background
                )
            } else {
                buttonContent(
                    icon: Image.Tabbar.AddButton.Regular.icon,
                    background: Image.Tabbar.AddButton.Regular.background
                )
            }
        }
        .buttonStyle(.plain)
        .contentShape(Circle())
    }
    
    private func buttonContent(icon: Image, background: Image) -> some View {
        background
            .resizable()
            .scaledToFit()
            .frame(width: 90)
            .overlay {
                icon
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
            }
            .transition(.scale.combined(with: .opacity))
    }
}

#Preview {
    TabBarPlusButton(isExpanded: false) {}
}
