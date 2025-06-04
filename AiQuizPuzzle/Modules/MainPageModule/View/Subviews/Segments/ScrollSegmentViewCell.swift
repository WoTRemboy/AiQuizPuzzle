//
//  ScrollSegmentViewCell.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 04/06/2025.
//

import SwiftUI

struct ScrollSegmentViewCell: View {
    
    private let title: String
    private let image: Image
    private let action: () -> Void
    
    init(title: String, image: Image, action: @escaping () -> Void) {
        self.title = title
        self.image = image
        self.action = action
    }
    
    internal var body: some View {
        Button {
            action()
        } label: {
            VStack(spacing: 2) {
                imageView
                titleLabel
            }
        }
        .buttonStyle(.plain)
    }
    
    private var imageView: some View {
        image
            .resizable()
            .scaledToFit()
        
            .clipShape(.rect(cornerRadius: 20))
            .frame(width: 100, height: 100)
            .background(background)
    }
    
    private var titleLabel: some View {
        Text(title)
            .font(.MainPage.Segment.cell())
            .foregroundStyle(Color.LabelColors.labelWhite)
    }
    
    private var background: some View {
        CellBackgroundView()
    }
}

#Preview {
    ScrollSegmentViewCell(title: "Transport", image: .MainPage.dailyQuiz) {}
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.purple)
}
