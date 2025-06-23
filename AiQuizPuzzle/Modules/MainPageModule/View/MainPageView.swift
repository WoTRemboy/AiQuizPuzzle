//
//  MainPageView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 02/06/2025.
//

import SwiftUI

struct MainPageView: View {
    @EnvironmentObject private var appRouter: AppRouter
    @State private var showSheet: Bool = false
    
    internal var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(spacing: 20) {
                cellsView
                segmentsView
            }
            .padding(.bottom, 70)
        }
        .navigationBarHidden(true)
        .fullScreenCover(isPresented: $showSheet) {
            QuizInfoView()
        }
        .overlay(alignment: .top) {
            BlurRectangleView()
        }
        .background(background)
    }
    
    private var cellsView: some View {
        VStack(spacing: 20) {
            DailyQuizCellView() {
                showSheet.toggle()
            }
            
            Button("Показать QuizInfo") {
                appRouter.push(.quizInfo, in: .home)
            }
            .buttonStyle(.borderedProminent)
            
            ResumeQuizCell(name: Texts.MainPage.Resume.namePlaceholder,
                           progress: 70) {
                // Resume Quiz Cell Action
            }
            
            PracticeQuizCell {
                // Practice Quiz Cell Action
            }
        }
        .padding(.horizontal, 26)
        .padding(.top)
    }
    
    private var segmentsView: some View {
        LazyVStack(spacing: 16) {
            ScrollSegmentView()
            ScrollSegmentView()
        }
    }
    
    private var background: some View {
        BackgroundView()
            .ignoresSafeArea()
    }
}

#Preview {
    MainPageView()
        .environmentObject(AppRouter())
}
