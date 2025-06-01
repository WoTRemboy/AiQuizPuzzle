//
//  FontExtension.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 31/05/2025.
//

import SwiftUI

extension Font {
    
    enum Opening {
        enum SplashScreen {
            static func title() -> Font? {
                Font.custom("Micro5-Regular", size: 150)
            }
        }
        
        enum Onboarding {
            static func title() -> Font? {
                Font.system(size: 50, weight: .semibold)
            }
            
            static func button() -> Font? {
                Font.system(size: 20, weight: .semibold)
            }
        }
        
        enum Card {
            static func title() -> Font? {
                Font.system(size: 25, weight: .semibold)
            }
            
            static func description() -> Font? {
                Font.system(size: 15, weight: .medium)
            }
        }
    }
    
    // MARK: - Titles

    static func largeTitle() -> Font? {
        Font.system(size: 35, weight: .bold)
    }
    
    static func title() -> Font? {
        Font.system(size: 20, weight: .medium)
    }
    
    static func headline() -> Font? {
        Font.system(size: 17, weight: .medium)
    }
    
    // MARK: - Body
    
    static func regularBody() -> Font? {
        Font.system(size: 17, weight: .regular)
    }
    
    static func body() -> Font? {
        Font.system(size: 17, weight: .light)
    }
    
    // MARK: - Subhead & Footnote
    
    static func subhead() -> Font? {
        Font.system(size: 15, weight: .light)
    }
    
    static func footnote() -> Font? {
        Font.system(size: 13, weight: .medium)
    }
    
    static func lightFootnote() -> Font? {
        Font.system(size: 13, weight: .light)
    }
}
