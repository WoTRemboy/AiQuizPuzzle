//
//  SplashScreenView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 29/05/2025.
//

import SwiftUI

/// A splash screen view that displays the app logo and title briefly before transitioning to onboarding.
struct SplashScreenView: View {
    
    // MARK: - Properties
    
    @AppStorage(Keys.UserDefaults.skipOnboarding) private var skipOnboarding: Bool = false
    /// Indicates whether to show the main onboarding screen.
    @State private var isActive = false
    /// Controls the index of the displayed text during splash animation.
    @State private var id = 0
    
    /// The texts displayed during the splash screen animation.
    private let texts = [String(), Texts.AppInfo.title]
    
    // MARK: - Body
    
    internal var body: some View {
        if isActive {
            // Navigates to the onboarding screen
            OnboardingScreenView()
        } else {
            // Displays splash screen content
            content
                .onAppear {
                    // Hides splash after a delay
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        withAnimation(.easeInOut(duration: skipOnboarding ? 0.3 : 0.7)) {
                            self.isActive = true
                        }
                    }
                }
        }
    }
    
    // MARK: - Splash Screen Content
    
    /// The main content of the splash screen, including logo and animated title.
    private var content: some View {
        ZStack {
            // Background gradient
            BackgroundView()
            
            VStack(spacing: 20) {
                // App logo
                Image.Opening.SpashScreen.logo
                    .resizable()
                    .scaledToFit()
                    .clipShape(.rect(cornerRadius: 50))
                    .frame(height: 300)
                
                // App title text
                Text(texts[id])
                    .foregroundStyle(Color.LabelColors.labelWhite)
                    .font(.Opening.SplashScreen.title())
                    .lineLimit(1)
                    .minimumScaleFactor(0.7)
                    .padding(.leading, 20)
                    .padding(.trailing, 10)
            }
            .contentTransition(.numericText())
            .onAppear {
                // Changes text after a slight delay
                Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { timer in
                    withAnimation {
                        id += 1
                    }
                }
            }
        }
    }
}

// MARK: - Preview

#Preview {
    SplashScreenView()
}
