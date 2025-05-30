//
//  AiQuizPuzzleApp.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 28/05/2025.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct AiQuizPuzzleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    internal var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}
