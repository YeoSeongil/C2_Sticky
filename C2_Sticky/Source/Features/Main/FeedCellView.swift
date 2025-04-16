//
//  FeedCellView.swift
//  C2_Sticky
//
//  Created by 성일 on 4/16/25.
//

import SwiftUI

struct FeedCellView: View {
    let feed: Feed
    
    var body: some View {
        VStack(spacing: 35) {
            HStack(spacing: 12) {
                Image(feed.profileImage)
                    .resizable()
                    .aspectRatio(1, contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(.circle)
                
                VStack(alignment: .leading) {
                    Text(feed.nickName)
                        .font(.body5)
                    
                    Text(feed.date)
                        .foregroundStyle(Color.gray)
                        .font(.body6)
                }
                
                Spacer()
                
                Button {
                    print("Tapped!")
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundStyle(Color.primary)
                }
                .opacity(feed.isMyFeed ? 1 : 0)
            }
            .padding(.horizontal, 12)
            
            ZStack {
                Image("feedImage")
                    .resizable()
                    .aspectRatio(1, contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: 350)
                    .overlay(alignment: .bottomTrailing) {
                        NavigationLink {
                            
                        } label: {
                            Image("addSticker")
                                .padding(.trailing, 16)
                        }

                    }
            }
        }
    }
}

#Preview {
    FeedCellView(feed: Feed.test)
}
