//
//  PracticeQuizCell.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 04/06/2025.
//

import SwiftUI

struct PracticeQuizCell: View {
    private let action: () -> Void
    
    init(action: @escaping () -> Void) {
        self.action = action
    }
    
    internal var body: some View {
        HStack(alignment: .top, spacing: 16) {
            VStack(alignment: .leading, spacing: 12) {
                titleDescription
                playButton
            }
            
            divider
            count
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
        
        .frame(maxWidth: .infinity)
        .background(CellBackgroundView())
    }
    
    private var titleDescription: some View {
        VStack(alignment: .leading, spacing: 7) {
            title
            description
        }
    }
    
    private var title: some View {
        Text(Texts.MainPage.Practice.title)
            .font(.MainPage.Cell.title())
            .foregroundStyle(Color.LabelColors.labelWhite)
            .minimumScaleFactor(0.7)
    }
    
    private var description: some View {
        Text(Texts.MainPage.Practice.description)
            .font(.MainPage.Cell.details())
            .foregroundStyle(Color.LabelColors.labelDetails)
            .lineLimit(1)
    }
    
    private var playButton: some View {
        CellPlayButton(title: Texts.MainPage.Practice.start.uppercased()) {
            action()
        }
        .disabled(true)
    }
    
    private var divider: some View {
        Rectangle()
            .fill(Color.BackgroundColors.Cell.divider)
            .frame(width: 2)
    }
    
    private var count: some View {
        VStack(spacing: 8) {
            Text(Texts.MainPage.Practice.count)
                .font(.MainPage.Cell.title())
                
            Text("\(0)")
                .font(.MainPage.Cell.count())
        }
        .foregroundStyle(Color.LabelColors.labelWhite)
        .minimumScaleFactor(0.1)
        .lineLimit(1)
        
        .frame(width: 96)
    }
}

#Preview {
    PracticeQuizCell() {}
        .padding(.horizontal, 26)
        .frame(height: 140)
}
