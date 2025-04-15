//
//  ContentView.swift
//  C2_Sticky
//
//  Created by 성일 on 4/15/25.
//

import SwiftUI

struct ContentView: View {
    @State var isLaunch: Bool = true
    
    var body: some View {
        
        if isLaunch {
            SplashView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        withAnimation(.linear) {
                            self.isLaunch = false
                        }
                    }
                }
        } else {
            LoginView()
        }
    }
}

#Preview {
    ContentView()
}
