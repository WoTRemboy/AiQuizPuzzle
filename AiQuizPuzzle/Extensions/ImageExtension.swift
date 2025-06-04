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
            static let logo = Image("SplashScreenLogo")
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
    
    enum MainPage {
        static let dailyQuiz = Image("DailyQuizCellIcon")
        static let resumeProgressBar = Image("ResumeQuizCellProgressBar")
        static let segmentCellIcon = Image("ScrollSegmentViewCellPlaceholder")
    }
    
    enum Tabbar {
        static let home = Image("TabbarIconHome")
        static let stats = Image("TabbarIconStats")
        static let quiz = Image("TabbarIconQuiz")
        static let settings = Image("TabbarIconSettings")
        
        enum AddButton {
            static let icon = Image("TabbarIconAdd")
            static let background = Image("TabbarBackgroundAdd")
        }
    }
}
