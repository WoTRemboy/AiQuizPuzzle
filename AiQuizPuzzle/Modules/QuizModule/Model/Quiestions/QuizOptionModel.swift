//
//  QuizOptionModel.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 08/07/2025.
//

import Foundation

struct QuizOption: Codable, Equatable, Hashable {
    var id = UUID()
    var name: String
    var isCorrect: Bool
    
    enum CodingKeys: CodingKey {
        case name
        case isCorrect
    }
}
