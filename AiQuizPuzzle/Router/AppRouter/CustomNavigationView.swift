//
//  CustomNavigationView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 08/06/2025.
//

import SwiftUI

struct CustomNavigationView: View {
    
    @StateObject internal var appRouter: AppRouter
    
    internal var body: some View {
        NavigationStack(path: $appRouter.paths) {
            // Views will be resolved here
        }
    }
}

#Preview {
    CustomNavigationView(appRouter: <#AppRouter#>)
}
