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
            [.GradientColors.purple,
             .GradientColors.purple,
             .GradientColors.purple,
             
             .GradientColors.orange,
             .GradientColors.purple,
             .GradientColors.red,
             
             .GradientColors.purple,
             .GradientColors.purple,
             .GradientColors.purple]
            
        case .first:
            [.GradientColors.purple,
             .GradientColors.orange,
             .GradientColors.purple,

             .GradientColors.purple,
             .GradientColors.purple,
             .GradientColors.purple,

             .GradientColors.red,
             .GradientColors.purple,
             .GradientColors.purple]
            
        case .second:
            [.GradientColors.purple,
             .GradientColors.purple,
             .GradientColors.orange,
             
             .GradientColors.red,
             .GradientColors.purple,
             .GradientColors.purple,
             
             .GradientColors.purple,
             .GradientColors.purple,
             .GradientColors.purple]
            
        case .third:
            [.GradientColors.red,
             .GradientColors.red,
             .GradientColors.purple,
             
             .GradientColors.purple,
             .GradientColors.purple,
             .GradientColors.orange,
             
             .GradientColors.purple,
             .GradientColors.purple,
             .GradientColors.purple]
            
        case .fourth:
            [.GradientColors.purple,
             .GradientColors.purple,
             .GradientColors.purple,
             
             .GradientColors.purple,
             .GradientColors.purple,
             .GradientColors.red,
             
             .GradientColors.orange,
             .GradientColors.purple,
             .GradientColors.purple]
            
        case .fifth:
            [.GradientColors.orange,
             .GradientColors.orange,
             .GradientColors.purple,

             .GradientColors.purple,
             .GradientColors.purple,
             .GradientColors.purple,

             .GradientColors.purple,
             .GradientColors.red,
             .GradientColors.red]
        }
    }
}
