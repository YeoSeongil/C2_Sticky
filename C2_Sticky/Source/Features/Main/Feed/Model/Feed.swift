//
//  Feed.swift
//  C2_Sticky
//
//  Created by 성일 on 4/16/25.
//

import Foundation

struct Feed: Hashable {
    let isMyFeed: Bool
    let profileImage: String
    let nickName: String
    let date: String
    let Items: [String]
}

extension Feed {
    static let empty: Feed = .init(isMyFeed: false, profileImage: "", nickName: "", date: "", Items: [])
    static let test: Feed = .init(isMyFeed: true, profileImage: "profile", nickName: "iL", date: "2025.03.10", Items: ["feedImage", "feedImage"])
}

extension Feed {
    static let mockFeed: [Feed] = [
        Feed(isMyFeed: true, profileImage: "profile", nickName: "iL", date: "2025.03.10", Items: ["feedImage", "feedImage"]),
        Feed(isMyFeed: false, profileImage: "profile", nickName: "Eddey", date: "2025.03.10", Items: ["feedImage"]),
        Feed(isMyFeed: false, profileImage: "profile", nickName: "Jack", date: "2025.03.10", Items: ["feedImage", "feedImage", "feedImage", "feedImage"]),
        Feed(isMyFeed: false, profileImage: "profile", nickName: "Moomin", date: "2025.03.10", Items: ["feedImage", "feedImage", "feedImage", "feedImage"]),
        Feed(isMyFeed: false, profileImage: "profile", nickName: "Paduck", date: "2025.03.10", Items: ["feedImage", "feedImage", "feedImage", "feedImage", "feedImage"])
    ]
}
