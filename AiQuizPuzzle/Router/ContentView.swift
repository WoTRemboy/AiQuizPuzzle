//
//  ContentView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 02/06/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var router = TabRouter()
    
    internal var body: some View {
        TabView(selection: $router.selected) {
            MainPageView()
                .tag(TabRouter.Tab.home)
            
            Text("Stats")
                .tag(TabRouter.Tab.stats)
            
            Text("Add")
                .tag(TabRouter.Tab.add)
            
            Text("Quiz")
                .tag(TabRouter.Tab.quiz)
            
            Text("Settings")
                .tag(TabRouter.Tab.settings)
        }
        .safeAreaInset(edge: .bottom) {
            VStack {
                CustomTabBar()
                    .environmentObject(router)
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(TabRouter())
}
