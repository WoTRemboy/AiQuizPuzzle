//
//  AppRouter.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 08/06/2025.
//

import SwiftUI

final class AppRouter: ObservableObject, NavigationCoordinator {
    @Published internal var paths = NavigationPath()
    
    init(paths: NavigationPath = NavigationPath()) {
        self.paths = paths
    }
    
    internal func resolveInitialRouter() -> any Routable {
        let mainPageRouter = MainPageRouter(rootCoordinator: self)
        return mainPageRouter
    }
    
    internal func push(_ router: any Routable) {
        DispatchQueue.main.async {
            let wrappedRouter = AnyRoutable(router)
            self.paths.append(wrappedRouter)
        }
    }
    
    internal func popLast() {
        DispatchQueue.main.async {
            self.paths.removeLast()
        }
    }
    
    internal func popToRoot() {
        DispatchQueue.main.async {
            self.paths.removeLast(self.paths.count)
        }
    }
}
