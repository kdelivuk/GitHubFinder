//
//  Repository.swift
//  Defines
//
//  Created by Kristijan Delivuk on 08/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import Foundation

public struct Repository: Decodable {
    public let id: Int
    public let owner: Owner
    public let name: String
    public let watchers: Int
    public let forks: Int
    public let openIssues: Int
    
    public struct Owner: Decodable {
        let avatar: URL
        
        enum CodingKeys: String, CodingKey {
            case avatar = "avatar_url"
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case owner = "owner"
        case name = "name"
        case watchers = "watchers_count"
        case forks = "forks_count"
        case openIssues = "open_issues_count"
    }
}
