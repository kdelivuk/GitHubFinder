//
//  Router.swift
//  API
//
//  Created by Kristijan Delivuk on 10/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import Foundation

enum Router {

    case search

    fileprivate var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }

    var path: URL {
        switch self {
        case .search:
            return baseURL.appendingPathComponent("search/repositories")
        }
    }
}
