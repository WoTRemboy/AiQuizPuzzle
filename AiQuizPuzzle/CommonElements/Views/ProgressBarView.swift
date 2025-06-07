//
//  ProgressBarView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 04/06/2025.
//

import SwiftUI

struct ProgressBarView: View {
    private var progress: CGFloat
    private var totalWidth: CGFloat
    
    private let dashWidth: CGFloat = 12
    private let dashSpacing: CGFloat = 0
    
    init(progress: CGFloat, totalWidth: CGFloat) {
        self.progress = progress
        self.totalWidth = totalWidth
    }
    
    internal var body: some View {
        Rectangle()
            .fill(Color.BackgroundColors.ProgressBar.background)
            .frame(width: totalWidth, height: dashWidth)
            .overlay(alignment: .leading) {
                progressContent
            }
            .clipShape(.rect(cornerRadius: 3))
    }
    
    private var progressContent: some View {
        HStack(spacing: dashSpacing) {
            let count = Int((progress * totalWidth) / (dashWidth + dashSpacing))
            return ForEach(0..<count, id: \.self) { item in
                Image.ProgressBar.cell
                    .resizable()
                    .scaledToFit()
                    .frame(width: dashWidth)
            }
        }
    }
}

#Preview {
    ProgressBarView(progress: 0.7, totalWidth: 300)
}
