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
            DailyQuizCellView() {
                showSheet.toggle()
            }
            .padding(.horizontal, 26)
            .padding(.top)
        }
        .fullScreenCover(isPresented: $showSheet) {
            QuizInfoView()
        }
        .background(background)
    }
    
    private var background: some View {
        BackgroundView()
            .ignoresSafeArea()
    }
}

#Preview {
    MainPageView()
}
