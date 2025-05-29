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
}
