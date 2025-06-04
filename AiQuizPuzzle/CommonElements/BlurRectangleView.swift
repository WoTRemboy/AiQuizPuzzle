//
//  BlurRectangleView.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 04/06/2025.
//

import SwiftUI

struct BlurRectangleView: View {
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    
    internal var body: some View {
        Rectangle()
            .fill(.ultraThinMaterial)
            .blur(radius: 10)
        
            .frame(height: safeAreaInsets.top * 2)
            .offset(y: -safeAreaInsets.top)
            .ignoresSafeArea()
    }
}

#Preview {
    BlurRectangleView()
}
