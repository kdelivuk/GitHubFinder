//
//  RepositoryRowViewModel.swift
//  GitHubFinder
//
//  Created by Kristijan Delivuk on 12/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import Defines
import UIKit

class GlobalDateFormatter {
    static let mediumDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()
    
    static let updatedAtDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        return formatter
    }()
}

final class RepositoryRowViewModel: Identifiable {
    var id: String {
        return String(format: "%d", repository.id)
    }
    
    var name: String {
        return repository.name
    }
    
    var description: String {
        return repository.description ?? "No description"
    }
    
    var watchers: String {
      return String(format: "%d", repository.watchers)
    }

    var forks: String {
      return String(format: "%d", repository.forks)
    }

    var openIssues: String {
      return String(format: "%d", repository.openIssues)
    }
    
    var updatedAt: String {
        guard let date = GlobalDateFormatter.updatedAtDateFormat.date(from: repository.updatedAt) else {
            print("Date parse failed")
            return ""
        }
        
        let string = GlobalDateFormatter.mediumDateFormatter.string(from: date)
        return string
    }
    
    // MARK: - Private Properties
    
    private let repository: Repository
    
    init(repository: Repository) {
        self.repository = repository
    }
}
