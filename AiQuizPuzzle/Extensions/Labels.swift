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
        
        enum Terms {
            static let markdown = "By clicking Start, you agree to our [Terms of Service](https://avoqode.com/terms-of-service) and [Privacy Policy](https://avoqode.com/privacy-policy)."
            static let markdownError = "Error parsing Terms of Service and Privacy Policy"
        }
        
        enum Button {
            static let next = "Продолжить"
            static let start = "Начать"
        }
        
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
    
    enum MainPage {
        enum Daily {
            static let title = "Ежедневный тест"
            static let details = "Детали режима"
            static let play = "Играть"
        }
        
        enum Resume {
            static let title = "Продолжить тест"
            static let namePlaceholder = "Название теста"
        }
        
        enum Practice {
            static let title = "Ошибки"
            static let description = "Начало пути к успеху"
            static let count = "Количество"
            static let start = "Начать"
        }
    }
    
    enum TabBar {
        static let difficulty = "Сложность"
        static let raiting = "Топ"
        static let create = "Создать"
        static let quiz = "Мои квизы"
    }
}


final class Keys {
    enum UserDefaults {
        static let skipOnboarding = "SkipOnboarding"
    }
    
    enum Namespace {
        enum Onboarding {
            static let progressCircle = "OnboardingProgressCircle"
            static let appName = "OnboardingAppName"
        }
    }
}
