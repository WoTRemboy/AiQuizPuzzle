//
//  Labels.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 29/05/2025.
//

import Foundation

final class Texts {
    // MARK: - App Info
    
    enum AppInfo {
        static let title = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String ?? "Thinkle"
    }
    
    enum Onboarding {
        static let welcome = "Добро пожаловать!"
        static let about = "Немного о"
        
        enum FirstPage {
            static let title = "Испытай ум"
            static let description = "Проходи квизы, созданные ИИ, которые подстраиваются под твой уровень"
        }
        
        enum SecondPage {
            static let title = "Учись и играй"
            static let description = "Запоминай, открывай новое и развивай мышление в лёгкой игровой форме"
        }
        
        enum ThirdPage {
            static let title = "По‑новому"
            static let description = "Вопросы никогда не повторяются — ИИ генерирует их заново каждый раз"
        }
        
        enum FourthPage {
            static let title = "Стиль"
            static let description = "Современная игра с ретро‑душой — дизайн, навеянный старыми играми"
        }
        
        enum FifthPage {
            static let title = "Прогрессия"
            static let description = "Отслеживай рост своих знаний и получай награды за активность"
        }
    }
}
