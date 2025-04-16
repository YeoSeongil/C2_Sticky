//
//  FeedHeaderView.swift
//  C2_Sticky
//
//  Created by 성일 on 4/16/25.
//

import SwiftUI

struct FeedHeaderView: View {
    var body: some View {
        HStack {
            Spacer()
            
            HStack(spacing: 16) {
                NavigationLink {
                    
                } label: {
                    Image(systemName: "plus")
                }
                
                NavigationLink {
                    
                } label: {
                    Image(systemName: "bell")
                }
            }
        }.background(Color.clear)
    }
}

#Preview {
    FeedHeaderView()
}
