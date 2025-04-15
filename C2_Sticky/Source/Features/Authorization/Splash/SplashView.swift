//
//  SplashView.swift
//  C2_Sticky
//
//  Created by 성일 on 4/15/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color.mainYellow
        
            Text("Sticky")
                .font(.main)
                .foregroundStyle(.white)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SplashView()
}
