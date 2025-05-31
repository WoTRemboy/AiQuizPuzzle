//
//  OnboardingCardView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 31/05/2025.
//

import SwiftUI

struct OnboardingCardView: View {
    
    private let title: String
    private let description: String
    private let image: Image
    
    init(title: String, description: String, image: Image) {
        self.title = title
        self.description = description
        self.image = image
    }
    
    internal var body: some View {
        VStack(spacing: 0) {
            titleLabel
                .padding(.top, 14)
            descriptionLabel
                .padding(.top, 12)
            imageView
                .padding(.top, 19)
        }
        .padding(.horizontal, 12)
        .background(background)
        .padding(.horizontal, 60)
    }
    
    private var titleLabel: some View {
        Text(title)
            .font(.Onboarding.Card.title())
    }
    
    private var descriptionLabel: some View {
        Text(description)
            .font(.Onboarding.Card.description())
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity, alignment: .center)
    }
    
    private var imageView: some View {
        image
            .resizable()
            .scaledToFit()
            .frame(height: 130)
            .background(Color.red)
            .padding(.bottom, 28)
    }
    
    private var background: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.regularMaterial)
    }
}

#Preview {
    OnboardingCardView(title: "Challenge",
                       description: "Take AI-generated quizzes that adapt to your level",
                       image: .Opening.Onboarding.first)
}
