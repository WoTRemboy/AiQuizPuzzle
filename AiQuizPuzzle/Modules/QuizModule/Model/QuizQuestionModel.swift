//
//  QuizQuestionModel.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 30/05/2025.
//

import SwiftUI

struct QuizQuestion: Identifiable, Codable {
    var id = UUID()
    var question: String
    var options: [String]
    var answer: String
    
    var tappedAnswer: String = ""
    
    enum CodingKeys: CodingKey {
        case question
        case options
        case answer
    }
}
