//
//  Follower.swift
//  GitPeek
//
//  Created by Naushad Ali Khan on 24/01/26.
//

import Foundation
struct Follower: Codable {
    let userName: String
    let userAvatar: String

    enum CodingKeys: String, CodingKey {
        case userName   = "login"
        case userAvatar = "avatar_url"
    }
}
