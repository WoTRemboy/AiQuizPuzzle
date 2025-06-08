//
//  AppRouterModel.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 08/06/2025.
//

import SwiftUI

typealias Routable = ViewFactory & Hashable

protocol ViewFactory {
    func makeView() -> AnyView
}

protocol NavigationCoordinator {
    func push(_ path: any Routable)
    func popLast()
    func popToRoot()
}
