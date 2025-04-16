//
//  Extension + View.swift
//  C2_Sticky
//
//  Created by 성일 on 4/15/25.
//

import SwiftUI

extension View {
    // Modifier Method
    /// 텍스트 필드에 포커스 상태에 따라 스타일을 적용합니다.
    /// 이 Modifier는 텍스트 필드의 포커스 상태에 따라 테두리 색상을 변경합니다.
    /// 포커스가 있을 때는 mainColor 테두리가 적용되고, 포커스가 없을 때는 gray가 적용됩니다.
    /// - Parameter isFocused: 텍스트 필드의 현재 포커스 상태
    /// - Returns: 포커스 상태에 따라 스타일이 적용된 수정된 뷰
    /// ```
    /// TextField("이메일을 입력해주세요.", text: $email)
    ///     .focused($isFocusedEmail)
    ///     .padding()
    ///     .focusedTextFieldLayout(isFocused: isFocusedEmail)
    /// ```
    func focusedTextFieldLayout(isFocused: Bool) -> some View {
        self.modifier(RoundedFocusedTextField(isFocused: isFocused))
    }
    
    /// View에 Tap하여 키보드를 숨기는 기능을 추가합니다.
    /// 이 Modifier는 뷰의 모든 영역(포함된 자식 뷰 영역 포함)에서 탭 제스처가 발생했을 때
    /// 키보드를 화면에서 내립니다. 텍스트 필드나 텍스트 에디터에 입력 중인 상태에서
    /// 화면의 아무 곳이나 탭하면 키보드가 사라집니다.
    /// - Returns: 키보드 숨김 기능이 추가된 수정된 뷰
    /// - Note: 이 수정자는 ScrollView가 없는 일반 뷰에서 가장 효과적으로 작동합니다.
    func didTapToDismissKeyboard() -> some View {
        self.modifier(KeyboardDismissModifier())
    }
    
    // Method
    /// 키보드를 화면에서 숨깁니다.
    /// 이 함수는 현재 첫 번째 응답자(first responder)에게 resignFirstResponder 메시지를 전송하여
    /// 키보드가 화면에서 사라지도록 합니다.
    /// - Note: 이 메서드는 텍스트 필드나 텍스트 뷰와 같은 입력 필드에 포커스가 있을 때 키보드를 내리는 데 사용됩니다.
    func didHideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }}
