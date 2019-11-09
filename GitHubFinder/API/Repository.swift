//
//  Repository.swift
//  API
//
//  Created by Kristijan Delivuk on 08/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import Foundation

struct Repository: Decodable {
    let id: Int
    let owner: Owner
    let name: String
    let watchers: Int
    let forks: Int
    let openIssues: Int
    
    struct Owner: Decodable {
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
