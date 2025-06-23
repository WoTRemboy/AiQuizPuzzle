//
//  DestinationFactory.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 11/06/2025.
//

import SwiftUI

extension AppRouter.Route {
    @ViewBuilder
    internal func destinationView(tab: AppRouter.Tab, appRouter: AppRouter) -> some View {
        switch tab {
        case .home:
            HomeTabDestinationFactory.view(for: self, appRouter: appRouter)
        case .stats:
            StatsTabDestinationFactory.view(for: self, appRouter: appRouter)
        case .quiz:
            QuizTabDestinationFactory.view(for: self, appRouter: appRouter)
        case .settings:
            SettingsTabDestinationFactory.view(for: self, appRouter: appRouter)
        }
    }
}
