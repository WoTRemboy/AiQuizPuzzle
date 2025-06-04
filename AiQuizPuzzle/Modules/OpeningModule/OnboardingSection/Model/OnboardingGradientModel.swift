//
//  OnboardingGradientModel.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 01/06/2025.
//

import SwiftUI

enum OnboardingPage: Int8 {
    case welcome = 8
    case first = 0
    case second = 1
    case third = 2
    case fourth = 3
    case fifth = 4
    
    internal var points: [SIMD2<Float>] {
        switch self {
        case .welcome:
            [[0.0, 0.0], [0.5, 0.0], [1.0, 0.0],
            [0.0, 0.2], [0.5, 0.5], [1.0, 1.0],
            [0.0, 1.0], [0.5, 1.0], [1.0, 1.0]]
            
        case .first:
            [[0.0, 0.0], [0.5, 0.0], [1.0, 0.0],
            [0.0, 0.7], [0.5, 0.5], [1.0, 1.0],
            [0.0, 1.0], [0.5, 1.0], [1.0, 1.0]]
            
        case .second, .third, .fourth:
            [[0.0, 0.0], [0.5, 0.0], [1.0, 0.0],
             [0.0, 0.5], [0.5, 0.5], [1.0, 0.5],
             [0.0, 1.0], [0.5, 1.0], [1.0, 1.0]]

        case .fifth:
            [[0.0, 0.0], [0.5, 0.0], [1.0, 0.0],
             [0.0, 0.4], [0.5, 0.5], [1.0, 0.6],
             [0.0, 1.0], [0.5, 1.0], [1.0, 1.0]]
        }
    }
    
    internal var colors: [Color] {
        switch self {
        case .welcome:
            [.GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple,
             
             .GradientColors.Onboarding.orange,
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.red,
             
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple]
            
        case .first:
            [.GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.orange,
             .GradientColors.Onboarding.purple,

             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple,

             .GradientColors.Onboarding.red,
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple]
            
        case .second:
            [.GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.orange,
             
             .GradientColors.Onboarding.red,
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple,
             
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple]
            
        case .third:
            [.GradientColors.Onboarding.red,
             .GradientColors.Onboarding.red,
             .GradientColors.Onboarding.purple,
             
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.orange,
             
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple]
            
        case .fourth:
            [.GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple,
             
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.red,
             
             .GradientColors.Onboarding.orange,
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple]
            
        case .fifth:
            [.GradientColors.Onboarding.orange,
             .GradientColors.Onboarding.orange,
             .GradientColors.Onboarding.purple,

             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.purple,

             .GradientColors.Onboarding.purple,
             .GradientColors.Onboarding.red,
             .GradientColors.Onboarding.red]
        }
    }
}
