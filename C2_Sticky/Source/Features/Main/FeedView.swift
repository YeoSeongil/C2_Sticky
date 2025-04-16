//
//  FeedView.swift
//  C2_Sticky
//
//  Created by 성일 on 4/16/25.
//

import SwiftUI

struct FeedView: View {
    
    private let feed: [Feed] = Feed.mockFeed
    
    var body: some View {
        NavigationStack {
            VStack() {
                Spacer()
            
                FeedHeaderView()
                    .frame(height:40)
                    .padding(.horizontal, 16)
                    .foregroundStyle(.primary)
                
                ScrollView {
                    LazyVStack(spacing: 75) {
                        ForEach(feed, id: \.self) { post in
                            FeedCellView(feed: post)
                        }
                    }
                    
                    Spacer().frame(minHeight: 30)
                    
                }
                
            }
        }
        .toolbar(.hidden)
    }
}

#Preview {
    FeedView()
}
