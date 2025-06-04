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
                Font.custom("EpilepsySansBold", size: 50)
            }
            
            static func button() -> Font? {
                Font.custom("EpilepsySans", size: 30)
            }
        }
        
        enum Card {
            static func title() -> Font? {
                Font.custom("EpilepsySansBold", size: 25)
            }
            
            static func description() -> Font? {
                Font.custom("EpilepsySans", size: 20)
            }
        }
    }
    
    enum MainPage {
        enum Cell {
            static func title() -> Font? {
                Font.custom("EpilepsySans", size: 20)
            }
            
            static func button() -> Font? {
                Font.custom("EpilepsySansBold", size: 30)
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
