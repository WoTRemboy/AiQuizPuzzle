//
//  DailyQuizCellView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 03/06/2025.
//

import SwiftUI

struct DailyQuizCellView: View {
    
    private let action: () -> Void
    
    init(action: @escaping () -> Void) {
        self.action = action
    }
    
    internal var body: some View {
        HStack(alignment: .top, spacing: 16) {
            VStack(alignment: .leading, spacing: 12) {
                titleDetails
                playButton
            }
            
            imageView
        }
        .padding(.leading, 16)
        .padding([.vertical, .trailing], 12)
        
        .frame(maxWidth: .infinity)
        .background(CellBackgroundView())
    }
    
    private var titleDetails: some View {
        VStack(alignment: .leading, spacing: 7) {
            titleLabel
            detailsLabel
        }
    }
    
    private var titleLabel: some View {
        Text(Texts.MainPage.Daily.title)
            .font(.MainPage.Cell.title())
            .foregroundStyle(Color.LabelColors.labelWhite)
            .minimumScaleFactor(0.7)
    }
    
    private var detailsLabel: some View {
        Text(Texts.MainPage.Daily.details)
            .font(.MainPage.Cell.details())
            .foregroundStyle(Color.LabelColors.labelDetails)
            .lineLimit(1)
    }
    
    private var imageView: some View {
        Image.MainPage.dailyQuiz
            .resizable()
            .scaledToFit()
            .frame(width: 118)
    }
    
    private var playButton: some View {
        CellPlayButton(title: Texts.MainPage.Daily.play.uppercased()) {
            action()
        }
    }
}

#Preview {
    DailyQuizCellView() {}
        .padding(.horizontal, 26)
}
