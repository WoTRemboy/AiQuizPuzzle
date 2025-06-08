//
//  MainPageRouter.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 08/06/2025.
//

import SwiftUI

final class MainPageRouter {
    
    private let rootCoordinator: NavigationCoordinator
    
    init(rootCoordinator: NavigationCoordinator) {
        self.rootCoordinator = rootCoordinator
    }
}

// MARK: - ViewFactory implementation

extension MainPageRouter: Routable {
    func makeView() -> AnyView {
        let view = MainPageView()
        return AnyView(view)
    }
}

// MARK: - Hashable implementation

extension MainPageRouter {
    static func == (lhs: MainPageRouter, rhs: MainPageRouter) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.hashValue)
    }
}

// MARK: - Router mock for preview

//extension MainPageRouter {
//    static let mock: MainPageRouter = .init(rootCoordinator: AppRouter(), user: Datasource.mockUser)
//}
