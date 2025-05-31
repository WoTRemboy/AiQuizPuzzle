//
//  OnboardingScreenModel.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 31/05/2025.
//

import SwiftUI

// MARK: - Onboarding Step Model

/// Represents a step in the onboarding process, including title, description, and image.
struct OnboardingStep {
    /// Title of the onboarding step.
    let name: String
    /// Description of what this step covers.
    let description: String
    /// Image associated with this onboarding step.
    let image: Image
}

// MARK: - Onboarding Step Setup

extension OnboardingStep {
    
    /// Configures and returns the list of onboarding steps.
    /// - Returns: An array of `OnboardingStep` instances, each representing a step in the onboarding process.
    static func stepsSetup() -> [OnboardingStep] {
        let first = OnboardingStep(name: Texts.Onboarding.FirstPage.title,
                                   description: Texts.Onboarding.FirstPage.description,
                                   image: .Opening.Onboarding.first)
        
        let second = OnboardingStep(name: Texts.Onboarding.SecondPage.title,
                                    description: Texts.Onboarding.SecondPage.description,
                                    image: .Opening.Onboarding.second)
        
        let third = OnboardingStep(name: Texts.Onboarding.ThirdPage.title,
                                   description: Texts.Onboarding.ThirdPage.description,
                                   image: .Opening.Onboarding.third)
        
        let fourth = OnboardingStep(name: Texts.Onboarding.FourthPage.title,
                                    description: Texts.Onboarding.FourthPage.description,
                                    image: .Opening.Onboarding.fourth)
        
        let fifth = OnboardingStep(name: Texts.Onboarding.FifthPage.title,
                                    description: Texts.Onboarding.FifthPage.description,
                                    image: .Opening.Onboarding.fifth)
        
        return [first, second, third, fourth, fifth]
    }
}

// MARK: - Onboarding Button Type

/// Enum defining types of buttons in the onboarding screen.
enum OnboardingButtonType {
    /// Button that navigates to the next onboarding step.
    case nextPage
    /// Button that completes onboarding and starts the app.
    case getStarted
}
