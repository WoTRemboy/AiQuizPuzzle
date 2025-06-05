//
//  TermsPolicyLabel.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 02/06/2025.
//

import SwiftUI

struct TermsPolicyLabel {
    func label() -> Text {
        if let attributedText = try? AttributedString(markdown: Texts.Onboarding.Terms.markdown) {
            Text(attributedText)
        } else {
            Text(Texts.Onboarding.Terms.markdownError)
        }
    }
}
