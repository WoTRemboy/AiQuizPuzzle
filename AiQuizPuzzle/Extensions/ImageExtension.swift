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
    
    enum Quiz {
        enum Difficulty {
            static let easy = Image(systemName: "dial.low")
            static let normal = Image(systemName: "dial.medium")
            static let hard = Image(systemName: "dial.high")
        }
    }
    
    enum QuizSelf {
        static let hint = Image(systemName: "questionmark.circle")
        static let forward = Image(systemName: "arrow.forward")
        static let close = Image(systemName: "xmark")
    }
    
    enum Tabbar {
        static let home = Image("TabbarIconHome")
        static let stats = Image("TabbarIconStats")
        static let quiz = Image("TabbarIconQuiz")
        static let settings = Image("TabbarIconSettings")
        static let overlayBackground = Image("TabbarButtonOverlayBackground")
        
        enum AddButton {
            enum Regular {
                static let icon = Image("TabbarIconAddRegular")
                static let background = Image("TabbarBackgroundAddRegular")
            }
            
            enum Expanded {
                static let icon = Image("TabbarIconAddExpanded")
                static let background = Image("TabbarBackgroundAddExpanded")
            }
        }
    }
    
    enum ProgressBar {
        static let cell = Image("ProgressBarCell")
    }
}
