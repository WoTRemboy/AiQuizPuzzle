//
//  QuizQestionsView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 30/05/2025.
//

import SwiftUI

struct QuizQestionsView: View {
    private var info: QuizInfo
    @State private var questions: [QuizQuestion]
    
    @Environment(\.dismiss) private var dismiss
    @State private var progress: CGFloat = 0
    @State private var currentIndex: Int = 0
    @State private var score: CGFloat = 0
    
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
            
            CustomButton(title: currentIndex == (questions.count - 1) ? "Finish" : "Next Question") {
                if currentIndex == (questions.count - 1) {
                    
                } else {
                    withAnimation {
                        currentIndex += 1
                        progress = CGFloat(currentIndex) / CGFloat(questions.count)
                    }
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
    private func questionView(_ question: QuizQuestion) -> some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Question \(currentIndex + 1)/\(questions.count)")
                .font(.callout)
                .foregroundStyle(Color.gray)
                .hAlign(.leading)
            
            Text(question.question)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(.black)
            
            VStack(spacing: 12) {
                ForEach(question.options, id: \.self) { option in
                    ZStack {
                        optionView(option, tint: .gray)
                            .opacity(question.answer == option
                                     && question.tappedAnswer != "" ? 0 : 1)
                        optionView(option, tint: .green)
                            .opacity(question.answer == option
                                     && question.tappedAnswer != "" ? 1 : 0)
                        optionView(option, tint: .red)
                            .opacity(question.tappedAnswer == option
                                     && question.tappedAnswer != question.answer ? 1 : 0)
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        guard questions[currentIndex].tappedAnswer == "" else { return }
                        withAnimation(.easeInOut) {
                            questions[currentIndex].tappedAnswer = option
                            
                            if question.answer == option {
                                score += 1
                            }
                        }
                    }
                }
            }
            .padding(.vertical, 10)
        }
        .padding(15)
        .hAlign(.center)
        .background {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(.white)
        }
        .padding(.horizontal, 15)
    }
    
    @ViewBuilder
    func optionView(_ option: String, tint: Color) -> some View {
        Text(option)
            .foregroundStyle(tint)
            .padding(.horizontal, 15)
            .padding(.vertical, 20)
            .hAlign(.leading)
            .background {
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .fill(tint.opacity(0.15))
                    .background {
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .stroke(tint.opacity(tint == .gray ? 0.15 : 1),
                                    lineWidth: 2)
                    }
            }
    }
}

#Preview {
    QuizQestionsView(info: QuizInfo.sampleData, questions: QuizQuestion.sampleData)
}
