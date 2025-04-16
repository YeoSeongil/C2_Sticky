//
//  Untitled.swift
//  C2_Sticky
//
//  Created by 성일 on 4/16/25.
//

import SwiftUI

struct KeyboardDismissModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(
                Color.clear
                    .contentShape(Rectangle())
                    .onTapGesture {
                        didTapToDismissKeyboard()
                    }
            )
    }
    
    private func didTapToDismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
