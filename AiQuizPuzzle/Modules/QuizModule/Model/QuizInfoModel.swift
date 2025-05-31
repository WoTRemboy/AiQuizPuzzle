//
//  QuizInfoModel.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 30/05/2025.
//

import SwiftUI

struct QuizInfo: Codable {
    var title: String
    var rules: [String]
    
    enum CodingKeys: CodingKey {
        case title
        case rules
    }
    
    internal static var sampleData: QuizInfo {
        QuizInfo(title: "Sample Quiz", rules: ["Sample rule 1", "Sample rule 2"])
    }
}
