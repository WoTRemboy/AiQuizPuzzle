//
//  CellBackgroundView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 03/06/2025.
//

import SwiftUI

struct CellBackgroundView: View {
    internal var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.BackgroundColors.Cell.background)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(
                        Color.BackgroundColors.Cell.stroke,
                        lineWidth: 3
                    )
            )
    }
}

#Preview {
    CellBackgroundView()
}
