//
//  TabBarMenuButton.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 06/06/2025.
//

import SwiftUI

struct TabBarMenuButton: View {
    private let image: Image
    private let action: () -> Void
    
    init(image: Image, action: @escaping () -> Void) {
        self.image = image
        self.action = action
    }
    
    internal var body: some View {
        Button {
            action()
        } label: {
            image
                .resizable()
                .scaledToFit()
                .foregroundStyle(Color.white)
            
                .frame(width: 36, height: 36)
                .padding(16)
                .background(background)
        }
        .buttonStyle(.plain)
    }
    
    private var background: some View {
        Circle()
            .fill(Color.TabbarColors.background)
    }
}

#Preview {
    TabBarMenuButton(image: Image(systemName: "person.crop.circle")) {}
}
