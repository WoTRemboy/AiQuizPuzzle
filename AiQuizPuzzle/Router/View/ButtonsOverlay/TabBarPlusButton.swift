//
//  TabBarPlusButton.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 03/06/2025.
//

import SwiftUI

struct TabBarPlusButton: View {
    
    private let action: () -> Void
    
    init(action: @escaping () -> Void) {
        self.action = action
    }
    
    internal var body: some View {
        Button {
            action()
        } label: {
            content
        }
        .buttonStyle(.plain)
        .contentShape(Circle())
    }
    
    private var content: some View {
        Image.Tabbar.AddButton.background
            .resizable()
            .scaledToFit()
            .frame(width: 90)
            .overlay {
                Image.Tabbar.AddButton.icon
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
            }
    }
}

#Preview {
    TabBarPlusButton() {}
}
