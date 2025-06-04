//
//  MainPageView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 02/06/2025.
//

import SwiftUI

struct MainPageView: View {
    @State private var showSheet: Bool = false
    
    internal var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(spacing: 32) {
                cellsView
                segmentsView
            }
            .padding(.bottom, 70)
        }
        .fullScreenCover(isPresented: $showSheet) {
            QuizInfoView()
        }
        .background(background)
    }
    
    private var cellsView: some View {
        VStack(spacing: 20) {
            DailyQuizCellView() {
                showSheet.toggle()
            }
            
            ResumeQuizCell(name: Texts.MainPage.Resume.namePlaceholder,
                           progress: 70.23) {
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
        VStack(spacing: 16) {
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
}
