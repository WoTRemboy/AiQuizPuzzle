//
//  OnboardingScreenView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 31/05/2025.
//

import SwiftUI
import SwiftUIPager

struct OnboardingScreenView: View {
    
    /// View model controlling the onboarding state.
    @StateObject private var viewModel = OnboardingViewModel()
    /// Current page tracker for the pager.
    @StateObject private var page: Page = .first()
    
    internal var body: some View {
        if viewModel.skipOnboarding {
            QuizInfoView()
        } else {
            onboardingFlow
                .background(background)
        }
    }
    
    private var onboardingFlow: some View {
        VStack(spacing: 0) {
            title
            cardContent
        }
    }
    
    private var title: some View {
        VStack(spacing: 16) {
            Text(Texts.Onboarding.about)
                .font(.Onboarding.title())
                .foregroundStyle(Color.LabelColors.labelReversed)
            
            Image.Opening.Onboarding.appName
                .resizable()
                .scaledToFit()
                .frame(height: 50)
        }
    }
    
    private var cardContent: some View {
        Pager(page: page,
              data: viewModel.pages,
              id: \.self) { index in
            OnboardingCardView(
                title: viewModel.steps[index].name,
                description: viewModel.steps[index].description,
                image: viewModel.steps[index].image)
            .tag(index)
        }
              .interactive(scale: 0.8)
              .itemSpacing(10)
              .itemAspectRatio(1.0)
              .expandPageToEdges()
        
              .swipeInteractionArea(.allAvailable)
              .horizontal()
    }
    
    private var background: some View {
        Color.purple
            .ignoresSafeArea()
    }
}

#Preview {
    OnboardingScreenView()
}
