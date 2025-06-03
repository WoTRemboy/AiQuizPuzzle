//
//  TabRouter.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 02/06/2025.
//

import SwiftUI

final class TabRouter: ObservableObject {
    @Published var selected: Tab = .home
    
    enum Tab {
        case home
        case stats
        case add
        case quiz
        case settings
        
        static internal var leftCases: [Tab] {
            [.home, .stats]
        }
        
        static internal var rightCases: [Tab] {
            [.quiz, .settings]
        }
        
        internal var icon: Image {
            switch self {
            case .home:
                Image.Tabbar.home
            case .stats:
                Image.Tabbar.stats
            case .add:
                Image.Tabbar.AddButton.icon
            case .quiz:
                Image.Tabbar.quiz
            case .settings:
                Image.Tabbar.settings
            }
        }
    }
}
