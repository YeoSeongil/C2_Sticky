//
//  RegisterView.swift
//  C2_Sticky
//
//  Created by 성일 on 4/15/25.
//

import SwiftUI
import PhotosUI

struct RegisterView: View {
    @Environment(\.dismiss) private var dismiss
    
    @State private var nickname: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImage: UIImage? = nil
    
    @FocusState private var isFocusedNickname: Bool
    @FocusState private var isFocusedEmail: Bool
    @FocusState private var isFocusedPassword: Bool
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Spacer()
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("프로필을 등록해주세요.")
                        .font(.h4)
                    Text("닉네임은 아카데미에서 사용하는 닉네임을 영어로 작성해주세요.")
                        .font(.body5)
                        .foregroundStyle(Color.gray)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                }
                
                HStack {
                    Spacer()
                    PhotosPicker(selection: $selectedItem, matching: .images) {
                        
                        if let image = selectedImage {
                            Image(uiImage: image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 120, height: 120)
                                .clipShape(Circle())
                        } else {
                            Image(systemName: "camera")
                                .resizable()
                                .frame(width: 25, height: 20)
                                .foregroundStyle(.gray)
                        }
                    }
                    .frame(width: 120, height: 120)
                    .background(Color.milkGray)
                    .clipShape(Circle())
                    .onChange(of: selectedItem) { _, newValue in
                        Task {
                            if let data = try? await newValue?.loadTransferable(type: Data.self),
                               let uiImage = UIImage(data: data) {
                                selectedImage = uiImage
                            }
                        }
                    }
                    .overlay {
                        RoundedRectangle(cornerRadius: 60)
                            .stroke(Color.black.opacity(0.2))
                    }
                    Spacer()
                }
                .padding(.vertical, 16)
                
                VStack(spacing: 16) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("닉네임")
                            .font(.body5)
                            .padding(.leading, 8)
                        
                        TextField("닉네임을 입력해주세요.", text: $nickname)
                            .focused($isFocusedNickname)
                            .padding()
                            .font(.body5)
                            .focusedTextFieldLayout(isFocused: isFocusedNickname)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("이메일")
                            .font(.body5)
                            .padding(.leading, 8)
                        
                        TextField("이메일을 입력해주세요.", text: $email)
                            .font(.body5)
                            .keyboardType(.emailAddress)
                            .focused($isFocusedEmail)
                            .padding()
                            .focusedTextFieldLayout(isFocused: isFocusedEmail)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("비밀번호")
                            .font(.body5)
                            .padding(.leading, 8)
                        
                        SecureField("비밀번호를 입력해주세요.", text: $password)
                            .font(.body5)
                            .focused($isFocusedPassword)
                            .padding()
                            .focusedTextFieldLayout(isFocused: isFocusedPassword)
                    }
                }
                
                Spacer().frame(minHeight: 30)
                
                Button("로그인") {
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 55)
                .foregroundStyle(.white)
                .background(Color.mainYellow)
                .clipShape(.rect(cornerRadius: 12))
                Spacer()
            }
            .padding(.horizontal, 16)
            .frame(minHeight: UIScreen.main.bounds.height - 100)
        }
        .simultaneousGesture(TapGesture().onEnded {
            didHideKeyboard()
        })
        .scrollDismissesKeyboard(.immediately)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(Color.primary)
                    }
                }
            }
        }
    }
}

#Preview {
    RegisterView()
}
