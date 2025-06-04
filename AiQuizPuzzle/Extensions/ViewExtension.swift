//
//  ViewExtension.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 29/05/2025.
//

import SwiftUI

extension View {
    
    /// Checks if the device has a notch by evaluating the top safe area inset.
    /// - Returns: A Boolean value indicating whether the device has a notch.
    internal func hasNotch() -> Bool {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let keyWindow = windowScene.windows.first(where: \.isKeyWindow) else {
            return false
        }
        return keyWindow.safeAreaInsets.top > 20
    }
    
    internal func bottomSafeAreaValue() -> CGFloat {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let keyWindow = windowScene.windows.first(where: \.isKeyWindow) else {
            return 0
        }
        return keyWindow.safeAreaInsets.bottom
    }
    
    internal func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    internal func hAlign(_ alignment: Alignment) -> some View {
        self
            .frame(maxWidth: .infinity, alignment: alignment)
    }
    
    internal func vAlign(_ alignment: Alignment) -> some View {
        self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
}
