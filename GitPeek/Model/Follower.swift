//
//  Follower.swift
//  GitPeek
//
//  Created by Naushad Ali Khan on 24/01/26.
//

import Foundation

struct Follower: Codable, Sendable {
    let userName: String
    let userAvatar: String

    enum CodingKeys: String, CodingKey {
        case userName   = "login"
        case userAvatar = "avatar_url"
    }
}

// Make the Hashable conformance explicitly nonisolated so it can satisfy Sendable requirements
nonisolated extension Follower: Hashable {}
