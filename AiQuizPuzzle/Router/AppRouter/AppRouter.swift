//
//  AppRouter.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 08/06/2025.
//

import SwiftUI

final class AppRouter: ObservableObject, NavigationCoordinator {
    @Published internal var paths = NavigationPath()
    
    internal func push(_ router: any Routable) {
        DispatchQueue.main.async {
            self.paths.append(router)
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

typealias Routable = ViewFactory & Hashable

protocol ViewFactory {
    func makeView() -> AnyView
}

protocol NavigationCoordinator {
    func push(_ path: any Routable)
    func popLast()
    func popToRoot()
}
