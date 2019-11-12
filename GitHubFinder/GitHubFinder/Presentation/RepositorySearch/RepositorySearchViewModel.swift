//
//  RepositorySearchViewModel.swift
//  GitHubFinder
//
//  Created by Kristijan Delivuk on 10/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import Defines
import Combine

final class RepositorySearchViewModel: ObservableObject {
    
    @Published var repositories: [Repository] = []
    
    // MARK: - PRIVATE PROPERTIES
    
    private let gitHubService: GitHubService
    
    init(gitHubService: GitHubService) {
        self.gitHubService = gitHubService
    }
    
    func search(with query: String) {
        
    }
}
