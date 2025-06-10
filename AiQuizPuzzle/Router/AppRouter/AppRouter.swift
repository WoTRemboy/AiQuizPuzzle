//  AppRouter.swift
//  AiQuizPuzzle
//  Общий профессиональный роутер с поддержкой Tab и Stack навигации

import SwiftUI

final class AppRouter: ObservableObject {
    @Published internal var selectedTab: Tab = .home
    @Published internal var navigationPaths: [Tab: [Route]] = Tab.allCases.reduce(into: [:]) { $0[$1] = [] }
    @Published internal var isExpanded: Bool = false

    enum Tab: CaseIterable, Hashable {
        case home, stats, quiz, settings
        
        internal var icon: Image {
            switch self {
            case .home:
                return Image.Tabbar.home
            case .stats:
                return Image.Tabbar.stats
            case .quiz:
                return Image.Tabbar.quiz
            case .settings:
                return Image.Tabbar.settings
            }
        }
        
        static internal let leftCases: [Tab] = [.home, .stats]
        static internal let rightCases: [Tab] = [.quiz, .settings]
    }
    
    enum Route: Hashable {
        case main, quizInfo, statsDetail, settingsDetail
    }
    
    func push(_ route: Route, in tab: Tab) {
        navigationPaths[tab, default: []].append(route)
    }
    func pop(in tab: Tab) {
        _ = navigationPaths[tab]?.popLast()
    }
    func popToRoot(in tab: Tab) {
        navigationPaths[tab] = []
    }
    
    func setExpanded(to state: Bool) {
        isExpanded = state
    }
}
