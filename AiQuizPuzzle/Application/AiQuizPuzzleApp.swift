//
//  AiQuizPuzzleApp.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 28/05/2025.
//

import SwiftUI
import Firebase

@main
struct AiQuizPuzzleApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}
