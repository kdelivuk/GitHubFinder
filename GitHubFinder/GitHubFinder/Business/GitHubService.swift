//
//  GitHubService.swift
//  GitHubFinder
//
//  Created by Kristijan Delivuk on 09/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import Combine
import API
import Defines

protocol GitHubFetchable {
    func repositories(with query: String, sorted: SortType) -> AnyPublisher<[Repository], Error>
}

class GitHubService {
   
    private let connector: GitHubType
    
    init(connector: GitHubType) {
        self.connector = connector
    }
}

extension GitHubService: GitHubFetchable {
    func repositories(with query: String, sorted: SortType) -> AnyPublisher<[Repository], Error> {
        return connector.search(with: query, sorted: sorted)
    }
}
