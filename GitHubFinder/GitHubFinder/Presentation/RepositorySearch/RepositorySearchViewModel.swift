//
//  RepositorySearchViewModel.swift
//  GitHubFinder
//
//  Created by Kristijan Delivuk on 10/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import Defines
import Combine
import SwiftUI

final class RepositorySearchViewModel: ObservableObject {
    
    @Published var repositories: [RepositoryRowViewModel] = []
    @Published var searchTerm: String = ""
    @Published var isLoading: Bool = false
    
    // MARK: - PRIVATE PROPERTIES
    
    private let gitHubService: GitHubService
    private var disposables = Set<AnyCancellable>()
    
    init(gitHubService: GitHubService) {
        self.gitHubService = gitHubService
        _ = $searchTerm
        .dropFirst(1)
        .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)
        .sink(receiveValue: repositories(with:))
    }
    
    func repositories(with query: String) {
        self.isLoading = true
        gitHubService.repositories(with: query, sorted: SortType.forks)
            .map { response in
                response.map(RepositoryRowViewModel.init)
            }
            .sink(receiveCompletion: { [weak self] value in
                guard let self = self else { return }
                self.isLoading = false
                switch value {
                case .failure:
                  self.repositories = []
                case .finished:
                  break
                }
            }) { (repository) in
                self.isLoading = false
                self.repositories = repository
            }
            .store(in: &disposables)
    }
}

extension RepositorySearchViewModel {
  var currentRepositoryDetails: some View {
    return RepositoryDetailsView(viewModel: RepositoryDetailsViewModel(repository: Mocks.repositoryMock))
  }
}

