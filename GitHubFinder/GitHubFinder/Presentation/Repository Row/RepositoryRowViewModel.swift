//
//  RepositoryRowViewModel.swift
//  GitHubFinder
//
//  Created by Kristijan Delivuk on 12/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import Defines

final class RepositoryRowViewModel: Identifiable {
    
    var Id: String {
        return String(format: "%d", repository.id)
    }
    
    var name: String {
        return String(format: "%@", repository.name)
    }
    
//    var watchers: String {
//      return String(format: "%d", repository.watchers)
//    }
//
//    var forks: String {
//      return String(format: "%d", repository.forks)
//    }
//
//    var openIssues: String {
//      return String(format: "%d", repository.openIssues)
//    }
    
    private let repository: Repository
    
    init(repository: Repository) {
        self.repository = repository
    }
}
