//
//  QuizView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 30/05/2025.
//

import SwiftUI
import Firebase
import FirebaseFirestore

struct QuizInfoView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var quizInfo: Quiz?
    @State private var questions: [QuizQuestion] = []
    @State private var startQuiz: Bool = false
    
    @AppStorage("log_status") private var logStatus: Bool = false
    
    internal var body: some View {
        if let quizInfo {
            VStack(spacing: 10) {
                HStack {
                    Text(quizInfo.name)
                        .font(.title)
                        .fontWeight(.semibold)
                        .hAlign(.leading)
                    
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                    }
                }
                
                customLabel("list.bullet.rectangle.portrait", String(questions.count), "Multiple Choice Questions")
                    .padding(.top, 20)
                
                Divider()
                    .padding(.horizontal, -15)
                    .padding(.top, 15)
                
//                if !quizInfo.rules.isEmpty {
//                    rulesView(quizInfo.rules)
//                }
                
                CustomButton(title: "Start Test") {
                    startQuiz.toggle()
                }
                .vAlign(.bottom)
            }
            .padding(15)
            .vAlign(.top)
            .fullScreenCover(isPresented: $startQuiz) {
                QuizQestionsView(info: quizInfo, questions: questions)
            }
        } else {
            VStack(spacing: 4) {
                ProgressView()
                Text("Please Wait...")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            .task {
                do {
                    try await fetchData()
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    @ViewBuilder
    private func rulesView(_ rules: [String]) -> some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Before you start")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.bottom, 12)
            
            ForEach(rules, id: \.self) { rule in
                HStack(alignment: .top, spacing: 10) {
                    Circle()
                        .fill(.black)
                        .frame(width: 8, height: 8)
                        .offset(y: 6)
                    Text(rule)
                        .font(.callout)
                        .lineLimit(3)
                }
            }
        }
        .hAlign(.leading)
    }
    
    @ViewBuilder
    private func customLabel(_ image: String, _ title: String, _ subTitle: String) -> some View {
        HStack(spacing: 12) {
            Image(systemName: image)
                .font(.title3)
                .frame(width: 45, height: 45)
                .background {
                    Circle()
                        .fill(.gray.opacity(0.1))
                        .padding(-1)
                        .background {
                            Circle()
                                .stroke(Color.black, lineWidth: 1)
                        }
                }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.black)
                
                Text(subTitle)
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.gray)
            }
            .hAlign(.leading)
        }
    }
    
    private func fetchData() async throws {
        try await loginUserAnonymous()
        let info = try await Firestore
            .firestore()
            .collection("Quiz")
            .document("Info")
            .getDocument(as: Quiz.self)
        
        let questions = try await Firestore
            .firestore()
            .collection("Quiz")
            .document("Info")
            .collection("Questions")
            .getDocuments()
            .documents
            .compactMap {
                try $0.data(as: QuizQuestion.self)
            }
        
        await MainActor.run {
            self.quizInfo = info
            self.questions = questions
        }
    }
    
    private func loginUserAnonymous() async throws {
        
    }
}

#Preview {
    QuizInfoView()
}


struct CustomButton: View {
    var title: String
    var onClick: () -> Void
    
    var body: some View {
        Button {
            onClick()
        } label: {
            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
                .hAlign(.center)
                .padding(.top, 15)
                .padding(.bottom, 10)
                .foregroundStyle(.white)
                .background {
                    Rectangle()
                        .fill(Color.pink)
                        .ignoresSafeArea()
                }
        }
        .padding([.bottom, .horizontal], -15)
    }
}
