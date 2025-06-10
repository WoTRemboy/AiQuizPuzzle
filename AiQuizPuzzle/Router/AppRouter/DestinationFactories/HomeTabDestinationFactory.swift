//
//  HomeTabDestinationFactory.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 11/06/2025.
//

import SwiftUI

struct HomeTabDestinationFactory {
    @ViewBuilder
    static func view(for route: AppRouter.Route, appRouter: AppRouter) -> some View {
        switch route {
        case .quizInfo:
            SimpleQuizInfoView()
        case .main:
            MainPageView()
                .environmentObject(appRouter)
        case .statsDetail:
            Text("Stats Detail")
        case .settingsDetail:
            Text("Settings Detail")
        }
    }
}
