//
//  QuizInfoModel.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 30/05/2025.
//

import Foundation
import SwiftUI

struct Quiz: Codable, Equatable, Hashable {
    var id = UUID()
    var name: String
    var description: String
    
    var difficulty: Quiz.Difficulty
    var questions: [QuizQuestion]
    
    var timer: Int
    var currentQuestionIndex: Int = 0
    
    mutating internal func increaseQuestionIndex() {
        currentQuestionIndex += 1
    }
    
    var correctAnswers: Int = 0
    
    mutating internal func increaseCorrectAnswers() {
        correctAnswers += 1
    }
    
    enum CodingKeys: CodingKey {
        case name, description, difficulty
        case questions, timer
    }
}
