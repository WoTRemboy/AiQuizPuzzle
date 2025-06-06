//
//  TabBarMenuButton.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 06/06/2025.
//

import SwiftUI

struct TabBarMenuButton: View {
    private let title: String
    private let action: () -> Void
    
    init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    internal var body: some View {
        Button {
            action()
        } label: {
            content
        }
        .buttonStyle(.plain)
    }
    
    private var content: some View {
        VStack(spacing: 6) {
            imageView
            titleLabel
        }
    }
    
    private var imageView: some View {
        Image.Tabbar.overlayBackground
            .resizable()
            .scaledToFit()
            .frame(width: 56)
    }
    
    private var titleLabel: some View {
        Text(title)
            .font(.TabBar.buttonTitle())
            .foregroundStyle(Color.LabelColors.labelWhite)
            .lineLimit(1)
    }
}

#Preview {
    TabBarMenuButton(title: "Difficulty") {}
}
