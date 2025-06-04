//
//  CellPlayButton.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 03/06/2025.
//

import SwiftUI

struct CellPlayButton: View {
    
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
            titleLabel
                .background(background)
        }
        .buttonStyle(.plain)
    }
    
    private var titleLabel: some View {
        Text(title)
            .font(.MainPage.Cell.button())
            .foregroundStyle(Color.LabelColors.labelWhite)
        
            .minimumScaleFactor(0.7)
            .lineLimit(1)
        
            .padding(.vertical, 12)
            .padding(.horizontal, 34)
    }
    
    private var background: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.blue)
    }
}

#Preview {
    CellPlayButton(title: "Begin") {}
}
