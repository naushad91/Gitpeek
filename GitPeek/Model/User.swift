//
//  User.swift
//  GitPeek
//
//  Created by Naushad Ali Khan on 24/01/26.
//

import Foundation

struct User: Codable, Sendable {
    let userName: String
    let userAvatar: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let profileURL: String
    let following: Int
    let followers: Int
    let createdAt: String

    enum CodingKeys: String, CodingKey {
        case userName     = "login"
        case userAvatar   = "avatar_url"
        case name
        case location
        case bio
        case publicRepos  = "public_repos"
        case publicGists  = "public_gists"
        case profileURL   = "html_url"
        case following
        case followers
        case createdAt    = "created_at"
    }
}

// Make conformances explicitly nonisolated so they can be used off the main actor and satisfy Sendable.
