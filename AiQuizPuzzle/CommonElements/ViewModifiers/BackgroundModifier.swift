//
//  BackgroundModifier.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 06/06/2025.
//

import SwiftUI

struct BackgroundModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(BackgroundView())
    }
}
