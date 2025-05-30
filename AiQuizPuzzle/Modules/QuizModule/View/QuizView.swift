//
//  QuizView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 30/05/2025.
//

import SwiftUI
import Firebase
import FirebaseFirestore

struct QuizView: View {
    
    @State private var quizInfo: QuizInfo?
    @State private var questions: [QuizQuestion] = []
    
    @AppStorage("log_status") private var logStatus: Bool = false
    
    internal var body: some View {
        if let quizInfo {
            Text(quizInfo.title)
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
    
    private func fetchData() async throws {
        try await loginUserAnonymous()
        let info = try await Firestore
            .firestore()
            .collection("Quiz")
            .document("Info")
            .getDocument(as: QuizInfo.self)
        
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
    QuizView()
}
