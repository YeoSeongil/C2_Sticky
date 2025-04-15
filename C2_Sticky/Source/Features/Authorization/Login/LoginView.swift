//
//  LoginView.swift
//  C2_Sticky
//
//  Created by 성일 on 4/15/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    @FocusState private var isFocusedEmail: Bool
    @FocusState private var isFocusedPassword: Bool
    
    var body: some View {
        VStack(spacing: 24) {
            Spacer()
            
            Text("Sticky")
                .font(.main)
                .foregroundStyle(Color.mainYellow)
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 8) {
                Text("이메일")
                    .font(.body4)
                    .padding(.leading, 8)
                
                TextField("이메일을 입력해주세요.", text: $email)
                    .focused($isFocusedEmail)
                    .padding()
                    .focusedTextFieldLayout(isFocused: isFocusedEmail)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("비밀번호")
                    .font(.body4)
                    .padding(.leading, 8)
                
                SecureField("비밀번호를 입력해주세요.", text: $password)
                    .focused($isFocusedPassword)
                    .padding()
                    .focusedTextFieldLayout(isFocused: isFocusedPassword)
            }
            
            Spacer()
            
            Button("로그인") {
                
            }
            .frame(maxWidth: .infinity, maxHeight: 55)
            .foregroundStyle(.white)
            .background(Color.mainYellow)
            .clipShape(.rect(cornerRadius: 12))
            
            Spacer()
            
            VStack(spacing: 8) {
                Text("Or Sign up With")
                    .font(.body5)
                    .foregroundStyle(.gray)
                
                Button("Sign up") {
                    
                }
                .foregroundStyle(Color.mainYellow)
                .font(.h4)
            }
            
            Spacer()
            
        }.padding(.horizontal, 16)
    }
}

#Preview {
    LoginView()
}
