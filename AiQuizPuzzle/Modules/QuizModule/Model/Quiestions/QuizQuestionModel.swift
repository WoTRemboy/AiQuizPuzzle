//
//  QuizQuestionModel.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 30/05/2025.
//

import SwiftUI

struct QuizQuestion: Identifiable, Codable, Hashable {
    var id = UUID()
    var format: String
    
    var question: String
    var title: String
    
    var options: [QuizOption]
    
    var price: Int
    var hint: String
    var explanation: String
    
    var selectedAnswer: QuizOption? = nil
    
    internal var isSelectedAnswerEmpty: Bool {
        selectedAnswer == nil
    }
    
    mutating internal func setSelectedAnswer(_ answer: QuizOption) {
        self.selectedAnswer = answer
    }
    
    enum CodingKeys: CodingKey {
        case question, format
        case title, options
        case price, hint, explanation
    }
}
