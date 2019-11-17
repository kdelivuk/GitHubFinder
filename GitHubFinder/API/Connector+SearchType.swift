//
//  Connector+GitHubType.swift
//  API
//
//  Created by Kristijan Delivuk on 09/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import Combine
import Defines

public protocol GitHubType {
    func search(with query: String, sorted: SortType) -> AnyPublisher<[Repository], Error>
}

public class Connector: GitHubType {
    private let session: URLSession
    private let decoder: JSONDecoder

    public init(session: URLSession = .shared, decoder: JSONDecoder = .init()) {
        self.session = session
        self.decoder = decoder
    }

    public func search(with query: String, sorted: SortType) -> AnyPublisher<[Repository], Error> {
        guard let url = Router.search(query: query).urlWithSearchComponents else { fatalError() }
        return session.dataTaskPublisher(for: url)
            .tryMap { output in
                guard let response = output.response as? HTTPURLResponse, response.statusCode == 200 else {
                    throw APIError.statusCode
                }
                return output.data
            }
            .decode(type: RepositoryResponse<Repository>.self, decoder: decoder)
            .map {
                $0.items
                
            }
            .mapError { error in
                if let error = error as? APIError {
                    return error
                } else {
                    return APIError.apiError(error.localizedDescription)
                }
            }
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
