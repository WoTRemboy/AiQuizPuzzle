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
        HStack {
            VStack(alignment: .leading, spacing: 24) {
                title
                playButton
            }
            Spacer()
            Image.MainPage.dailyQuiz
        }
        .padding(.leading, 16)
        .padding([.vertical, .trailing], 12)
        
        .frame(maxWidth: .infinity)
        .background(CellBackgroundView())
    }
    
    private var title: some View {
        Text(Texts.MainPage.Daily.title)
            .font(.MainPage.Cell.title())
            .foregroundStyle(Color.LabelColors.labelWhite)
            .minimumScaleFactor(0.7)
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
