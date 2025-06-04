//
//  ScrollSegmentView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 04/06/2025.
//

import SwiftUI

struct ScrollSegmentView: View {
    internal var body: some View {
        VStack(spacing: 10) {
            titleLabel
            scrollView
        }
    }
    
    private var titleLabel: some View {
        Text("Категории дня")
            .font(.MainPage.Segment.title())
            .foregroundStyle(Color.LabelColors.labelWhite)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 26)
    }
    
    private var scrollView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 24) {
                ScrollSegmentViewCell(title: "Еда", image: .MainPage.dailyQuiz) {}
                ScrollSegmentViewCell(title: "Транспорт", image: .MainPage.dailyQuiz) {}
                ScrollSegmentViewCell(title: "Страны", image: .MainPage.dailyQuiz) {}
            }
            .padding(.horizontal, 26)
        }
    }
}

#Preview {
    ScrollSegmentView()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.purple)
}
