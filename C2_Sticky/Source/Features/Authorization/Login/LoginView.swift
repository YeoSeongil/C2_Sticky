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
        NavigationStack {
            VStack(spacing: 24) {
                Spacer()
                
                Text("Sticky")
                    .font(.main)
                    .foregroundStyle(Color.mainYellow)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("이메일")
                        .font(.body5)
                        .padding(.leading, 8)
                    
                    TextField("이메일을 입력해주세요.", text: $email)
                        .focused($isFocusedEmail)
                        .padding()
                        .font(.body5)
                        .focusedTextFieldLayout(isFocused: isFocusedEmail)
                        .keyboardType(.emailAddress)
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("비밀번호")
                        .font(.body5)
                        .padding(.leading, 8)
                    
                    SecureField("비밀번호를 입력해주세요.", text: $password)
                        .focused($isFocusedPassword)
                        .padding()
                        .font(.body5)
                        .focusedTextFieldLayout(isFocused: isFocusedPassword)
                }
                
                Spacer()
                
                NavigationLink {
                    FeedView()
                } label: {
                    Text("로그인")
                        .font(.h4)
                        .frame(maxWidth: .infinity, maxHeight: 55)
                        .foregroundStyle(.white)
                        .background(Color.mainYellow)
                        .clipShape(.rect(cornerRadius: 12))
                }

                Spacer()
                
                VStack(spacing: 8) {
                    Text("Or Sign up With")
                        .font(.body5)
                        .foregroundStyle(.gray)
                    
                    NavigationLink( destination: RegisterView()) {
                        Text("Sign up")
                    }
                    .foregroundStyle(Color.mainYellow)
                    .font(.h4)
                }
                Spacer()
            }
            .padding(.horizontal, 16)
            .didTapToDismissKeyboard()
        }
    }
}

#Preview {
    LoginView()
}
