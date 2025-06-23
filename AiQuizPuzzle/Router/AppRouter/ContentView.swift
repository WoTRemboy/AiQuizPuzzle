//
//  ContentView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 02/06/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var appRouter = AppRouter()
    
    private func bindingForTab(_ tab: AppRouter.Tab) -> Binding<[AppRouter.Route]> {
        Binding(
            get: { appRouter.navigationPaths[tab] ?? [] },
            set: { appRouter.navigationPaths[tab] = $0 }
        )
    }
    
    internal var body: some View {
        TabView(selection: $appRouter.selectedTab) {
            NavigationStack(path: bindingForTab(.home)) {
                MainPageView()
                    .environmentObject(appRouter)
                    .navigationDestination(for: AppRouter.Route.self) { route in
                        route.destinationView(tab: .home, appRouter: appRouter)
                    }
            }
            .tag(AppRouter.Tab.home)
            
            NavigationStack(path: bindingForTab(.stats)) {
                Text("Stats")
                    .modifier(BackgroundModifier())
            }
            .tag(AppRouter.Tab.stats)
            
            NavigationStack(path: bindingForTab(.quiz)) {
                Text("Quiz")
                    .modifier(BackgroundModifier())
            }
            .tag(AppRouter.Tab.quiz)
            
            NavigationStack(path: bindingForTab(.settings)) {
                Text("Settings")
                    .modifier(BackgroundModifier())
            }
            .tag(AppRouter.Tab.settings)
        }
        .overlay(alignment: .bottom) {
            CustomTabBar()
                .environmentObject(appRouter)
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AppRouter())
}
