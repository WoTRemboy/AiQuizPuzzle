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
                .modifier(BackgroundModifier())
                .tag(TabRouter.Tab.stats)
            
            Text("Quiz")
                .modifier(BackgroundModifier())
                .tag(TabRouter.Tab.quiz)
            
            Text("Settings")
                .modifier(BackgroundModifier())
                .tag(TabRouter.Tab.settings)
        }
        .overlay(alignment: .bottom) {
            CustomTabBar()
                .environmentObject(router)
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(TabRouter())
}
