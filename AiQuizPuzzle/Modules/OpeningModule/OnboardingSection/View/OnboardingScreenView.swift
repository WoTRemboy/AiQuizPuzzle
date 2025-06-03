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
    @Namespace private var namespace
    
    internal var body: some View {
        if viewModel.skipOnboarding {
            ContentView()
        } else {
            onboardingFlow
                .background {
                    background
                        .ignoresSafeArea()
                }
        }
    }
    
    private var onboardingFlow: some View {
        VStack(spacing: 0) {
            title
                .padding(.top, hasNotch() ? 54 : 20)
            
            if viewModel.beginOnboarding {
                mainOnboardingContent
                    .transition(.scale)
            } else {
                introContent
            }
            
            nextPageButton
                .padding(.bottom, 28)
        }
    }
    
    private var introContent: some View {
        titleImage
            .frame(maxHeight: .infinity, alignment: .center)
            .padding(.horizontal, 38)
    }
    
    private var mainOnboardingContent: some View {
        VStack(spacing: 0) {
            cardContent
            progressCircles
                .padding(.bottom, 20)
        }
    }
    
    private var title: some View {
        VStack(spacing: 16) {
            Text(viewModel.beginOnboarding
                 ? Texts.Onboarding.about
                 : Texts.Onboarding.welcome)
            .font(.Opening.Onboarding.title())
            .foregroundStyle(Color.LabelColors.labelWhite)
            .multilineTextAlignment(.center)
            .contentTransition(.numericText())
            
            if viewModel.beginOnboarding {
                titleImage
                    .frame(height: 50)
            }
        }
    }
    
    private var titleImage: some View {
        Image.Opening.Onboarding.appName
            .resizable()
            .scaledToFit()
            .matchedGeometryEffect(
                id: Keys.Namespace.Onboarding.appName,
                in: namespace)
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
    
    private var progressCircles: some View {
        HStack(spacing: 28) {
            ForEach(viewModel.pages, id: \.self) { step in
                if step == page.index {
                    Capsule()
                        .frame(width: 30, height: 10)
                        .foregroundStyle(.regularMaterial)
                        .matchedGeometryEffect(
                            id: Keys.Namespace.Onboarding.progressCircle,
                            in: namespace)
                } else {
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundStyle(.ultraThinMaterial)
                        .transition(.scale)
                }
            }
        }
    }
    
    private var nextPageButton: some View {
        Button {
            if viewModel.isLastPage(current: page.index) {
                viewModel.transferToMainPage()
            } else {
                withAnimation(.snappy) {
                    if viewModel.beginOnboarding {
                        page.update(.next)
                    } else {
                        viewModel.toggleBeginOnboarding()
                    }
                }
            }
        } label: {
            Text(!viewModel.isLastPage(current: page.index)
                 ? Texts.Onboarding.Button.next
                 : Texts.Onboarding.Button.start)
            .font(.Opening.Onboarding.button())
            .contentTransition(.numericText())
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            
            .foregroundColor(Color.LabelColors.labelWhite)
            .background(Color.Button.orange)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .frame(height: 68)
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 28)
    }
    
    private var background: some View {
        let page = viewModel.currentGradientPage(index: page.index)
        if #available(iOS 18.0, *) {
            return MeshGradient(
                width: 3,
                height: 3,
                points: page.points,
                colors: page.colors
            )
        } else {
            return Color.purple
        }
    }
}

#Preview {
    OnboardingScreenView()
}
