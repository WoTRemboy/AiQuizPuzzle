//
//  BackgroundView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 02/06/2025.
//

import SwiftUI

struct BackgroundView: View {
    internal var body: some View {
        // Linear gradient close to the provided reference:
        // yellow → peach → magenta → deep blue diagonally
        LinearGradient(
            colors: [
                Color.GradientColors.Background.yellow, // warm yellow (top‑right)
                Color.GradientColors.Background.pink, // peach‑pink
                Color.GradientColors.Background.magenta, // magenta / deep pink
                Color.GradientColors.Background.blue  // midnight blue (bottom‑left)
            ],
            startPoint: .topTrailing,
            endPoint: .bottomLeading
        )
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
