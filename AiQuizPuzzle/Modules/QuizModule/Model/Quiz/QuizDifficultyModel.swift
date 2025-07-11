//
//  QuizDifficultyModel.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 08/07/2025.
//

import SwiftUI

extension Quiz {
    enum Difficulty: String, CaseIterable, Codable {
        case easy = "Easy"
        case normal = "Normal"
        case hard = "Hard"
        
        internal var icon: Image {
            switch self {
            case .easy:
                Image.Quiz.Difficulty.easy
            case .normal:
                Image.Quiz.Difficulty.normal
            case .hard:
                Image.Quiz.Difficulty.hard
            }
        }
    }
}
