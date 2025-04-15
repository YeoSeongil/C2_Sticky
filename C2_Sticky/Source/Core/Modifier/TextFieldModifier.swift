//
//  TextFieldModifier.swift
//  C2_Sticky
//
//  Created by 성일 on 4/15/25.
//

import SwiftUI

struct RoundedFocusedTextField: ViewModifier {
    let isFocused: Bool
    
    func body(content: Content) -> some View {
        content
            .overlay {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(isFocused ? Color.mainYellow : Color.mainGray)
            }
    }
}

