//
//  Extension + View.swift
//  C2_Sticky
//
//  Created by 성일 on 4/15/25.
//

import SwiftUI

extension View {
    func focusedTextFieldLayout(isFocused: Bool) -> some View {
        self.modifier(RoundedFocusedTextField(isFocused: isFocused))
    }
    
    func didTapToDismissKeyboard() -> some View {
        self.modifier(KeyboardDismissModifier())
    }
}
