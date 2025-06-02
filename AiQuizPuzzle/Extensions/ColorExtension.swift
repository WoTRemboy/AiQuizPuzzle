//
//  ColorExtension.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 29/05/2025.
//

import SwiftUI

extension Color {
    
    // MARK: - Back Colors
    
    enum BackColors {
        static let backElevated = Color("BackElevated")
        static let backiOSPrimary = Color("BackiOSPrimary")
        static let backPrimary = Color("BackPrimary")
        static let backSecondary = Color("BackSecondary")
        static let backDefault = Color("BackDefault")
        static let backSheet = Color("BackSheet")
    }
    
    // MARK: - Label Colors
    
    enum LabelColors {
        static let labelDisable = Color("LabelDisable")
        static let labelDetails = Color("LabelDetails")
        static let labelPrimary = Color("LabelPrimary")
        static let labelSecondary = Color("LabelSecondary")
        static let labelTertiary = Color("LabelTertiary")
        static let labelReversed = Color("LabelReversed")
        static let labelBlack = Color("LabelBlack")
        static let labelGreyLight = Color("LabelGreyLight")
        static let labelGreyDark = Color("LabelGreyDark")
        static let labelPlaceholder = Color("LabelPlaceholder")
    }
    
    // MARK: - Support Colors
    
    enum SupportColors {
        static let supportNavBar = Color("SupportNavBar")
        static let supportOverlay = Color("SupportOverlay")
        static let supportSegmented = Color("SupportSegmented")
        static let supportPopup = Color("SupportPopup")
    }
    
    enum Button {
        static let orange = Color("ButtonColorOrange")
    }
    
    enum GradientColors {
        enum Onboarding {
            static let orange = Color("GradientOrange")
            static let red = Color("GradientRed")
            static let purple = Color("GradientPurple")
        }
        
        enum Background {
            static let yellow = Color("BackgroundGradientYellow")
            static let pink = Color("BackgroundGradientPink")
            static let magenta = Color("BackgroundGradientMagenta")
            static let blue = Color("BackgroundGradientBlue")
        }
    }
}
