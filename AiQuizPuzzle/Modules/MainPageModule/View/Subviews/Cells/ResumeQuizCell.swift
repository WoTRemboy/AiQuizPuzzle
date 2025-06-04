//
//  ResumeQuizCell.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 04/06/2025.
//

import SwiftUI

struct ResumeQuizCell: View {
    
    private let name: String
    private let progress: Float
    private let action: () -> Void
    
    init(name: String, progress: Float, action: @escaping () -> Void) {
        self.name = name
        self.progress = progress
        self.action = action
    }
    
    internal var body: some View {
        Button {
            action()
        } label: {
            content
        }
        .buttonStyle(.plain)
    }
    
    private var content: some View {
        VStack(spacing: 8) {
            HStack {
                titleName
                progressLabel
            }
            progressBar
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        
        .frame(maxWidth: .infinity)
        .background(CellBackgroundView())
    }
    
    private var titleName: some View {
        VStack(alignment: .leading, spacing: 7) {
            titleLabel
            quizNameLabel
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var titleLabel: some View {
        Text(Texts.MainPage.Resume.title)
            .font(.MainPage.Cell.title())
            .foregroundStyle(Color.LabelColors.labelWhite)
    }
    
    private var quizNameLabel: some View {
        Text(Texts.MainPage.Resume.namePlaceholder)
            .font(.MainPage.Cell.details())
            .foregroundStyle(Color.LabelColors.labelDetails)
            .lineLimit(1)
    }
    
    private var progressLabel: some View {
        Text("\(progress, specifier: "%.0f")%")
            .font(.MainPage.Cell.progress())
            .foregroundStyle(Color.LabelColors.labelWhite)
    }
    
    private var progressBar: some View {
        Image.MainPage.resumeProgressBar
            .resizable()
            .scaledToFit()
            .clipShape(.rect(cornerRadius: 4))
    }
}

#Preview {
    ResumeQuizCell(name: Texts.MainPage.Resume.namePlaceholder, progress: 70.98) {}
}
