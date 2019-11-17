//
//  Repository.swift
//  Defines
//
//  Created by Kristijan Delivuk on 08/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import Foundation

public struct Repository: Decodable, Identifiable {
    public let id: Int
    public let owner: Owner
    public let name: String
    public let description: String?
    public let watchers: Int
    public let forks: Int
    public let openIssues: Int
    public let updatedAt: String
    
    public struct Owner: Decodable {
        let login: String
        let avatarURL: URL

        public init(login: String, avatarURL: URL) {
            self.login = login
            self.avatarURL = avatarURL
        }

        enum CodingKeys: String, CodingKey {
            case login = "login"
            case avatarURL = "avatar_url"
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case owner = "owner"
        case name = "name"
        case description = "description"
        case watchers = "watchers_count"
        case forks = "forks_count"
        case openIssues = "open_issues_count"
        case updatedAt = "updated_at"
    }
    
    public init(id: Int, owner: Owner, name: String, description: String?, watchers: Int, forks: Int, openIssues: Int, updatedAt: String) {
        self.id = id
        self.owner = owner
        self.name = name
        self.description = description
        self.watchers = watchers
        self.forks = forks
        self.openIssues = openIssues
        self.updatedAt = updatedAt
    }
}

fileprivate let avatarURL = "https://secure.gravatar.com/avatar/e7956084e75f239de85d3a31bc172ace?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png"
public struct Mocks {
    public static let repositoryMock = Repository(id: 0, owner: Repository.Owner(login: "Pero Peric", avatarURL: URL(string: avatarURL)!), name: "Test repository", description: "Lorem ipsum et dolor ...", watchers: 10, forks: 11, openIssues: 12, updatedAt: "")
}
