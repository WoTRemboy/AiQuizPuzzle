//
//  QuizQestionsView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 30/05/2025.
//

import SwiftUI

struct QuizQestionsView: View {
    private var info: QuizInfo
    private var questions: [QuizQuestion]
    
    @Environment(\.dismiss) private var dismiss
    @State private var progress: CGFloat = 0
    @State private var currentIndex: Int = 0
    
    init(info: QuizInfo, questions: [QuizQuestion]) {
        self.info = info
        self.questions = questions
    }
    
    internal var body: some View {
        VStack(spacing: 16) {
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
            }
            .hAlign(.leading)
            
            Text(info.title)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
                .hAlign(.leading)
            
            GeometryReader {
                let size = $0.size
                ZStack(alignment: .leading) {
                    Rectangle()
                        .fill(.black.opacity(0.2))
                    
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: progress * size.width, alignment: .leading)
                }
                .clipShape(Capsule())
            }
            .frame(height: 20)
            .padding(.top, 5)
            
            GeometryReader { _ in
                ForEach(questions.indices, id: \.self) { index in
                    if currentIndex == index {
                        questionView(questions[index])
                            .transition(.asymmetric(
                                insertion: .move(edge: .trailing),
                                removal: .move(edge: .leading)))
                    }
                }
            }
            .padding(.horizontal, -15)
            .padding(.vertical, 15)
            
            CustomButton(title: "Next Question") {
                withAnimation {
                    currentIndex += 1
                }
            }
        }
        .padding(15)
        .hAlign(.center)
        .vAlign(.top)
        .background {
            Color.blue
                .ignoresSafeArea()
        }
    }
    
    @ViewBuilder
    private func questionView(_ quiestion: QuizQuestion) -> some View {
        RoundedRectangle(cornerRadius: 20, style: .continuous)
            .fill(.white)
            .padding(.horizontal, 15)
    }
}

#Preview {
    QuizQestionsView(info: QuizInfo.sampleData, questions: QuizQuestion.sampleData)
}
