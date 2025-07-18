//
//  QuizSelfView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 10/07/2025.
//

import SwiftUI

struct QuizSelfView: View {
    
    @StateObject private var viewModel: QuizViewModel
    @Namespace private var namespace
            
    init(quiz: Quiz) {
        let viewModel = QuizViewModel(quiz: quiz)
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    internal var body: some View {
        ZStack {
            let questionID = viewModel.currentQuestion.id
            scrollViewContent
                .id(questionID)
                .transition(.asymmetric(
                    insertion: .move(edge: .trailing),
                    removal: .move(edge: .leading)
                ))
                .animation(.default, value: questionID)
        }
        
        .safeAreaInset(edge: .top) {
            progressBar
                .padding(.vertical)
        }
        .safeAreaInset(edge: .bottom) {
            QuizSelfBottomBarButtons(viewModel: viewModel)
        }
        .toolbar {
            ToolbarItem {
                scoreView
            }
            
            ToolbarItem {
                hintButton
            }
        }
        .navigationBarBackButtonHidden()
        .navigationTitle(viewModel.quiz.name)
    }
    
    private var progressBar: some View {
        ProgressBarView(progress: viewModel.quizProgress, totalWidth: 300)
            .frame(height: 20)
            .padding(.horizontal)
    }
    
    private var scrollViewContent: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(viewModel.quiz.questions) { question in
                if question.id == viewModel.currentQuestion.id {
                    QuizSelfQuestionContent(question: question, viewModel: viewModel)
                }
            }
            .padding(.horizontal)
        }
        .scrollBounceBehavior(.basedOnSize, axes: [.vertical])
        
    }
    
    private var scoreView: some View {
        Text("\(Texts.QuizSelf.Toolbar.score): \(viewModel.quizScore)")
            .contentTransition(.numericText(value: Double(viewModel.quizScore)))
            .padding(.horizontal)
            .frame(minWidth: 100, alignment: .center)
    }
    
    private var hintButton: some View {
        Button {
            viewModel.isShowingHintPopoverToggle()
        } label: {
            Image.QuizSelf.hint
        }
        .popover(isPresented: $viewModel.isShowingHintPopover) {
            Text(viewModel.currentQuestion.hint)
                .padding()
                .presentationCompactAdaptation(.popover)
                .lineLimit(0)
        }
    }
}

#Preview {
    QuizSelfView(quiz: Quiz.sampleData)
        .environmentObject(AppRouter())
}
