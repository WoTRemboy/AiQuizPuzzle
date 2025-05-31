//
//  ImageExtension.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 29/05/2025.
//

import SwiftUI

extension Image {
    enum Opening {
        enum SpashScreen {
            static let logo = Image("OnboardingScreenLogo")
        }
        
        enum Onboarding {
            static let appName = Image("OnboardingAppName")
            
            static let first = Image("OnboardingFirst")
            static let second = Image("OnboardingSecond")
            static let third = Image("OnboardingThird")
            static let fourth = Image("OnboardingFourth")
            static let fifth = Image("OnboardingFifth")
        }
    }
}
