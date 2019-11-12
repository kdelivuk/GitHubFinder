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

    private var cancellable: AnyCancellable?
    
    public func search(with query: String, sorted: SortType) -> AnyPublisher<[Repository], Error> {
        return session.dataTaskPublisher(for: Router.search.path)
            .tryMap { output in
                guard let response = output.response as? HTTPURLResponse, response.statusCode == 200 else {
                    throw APIError.statusCode
                }
                return output.data
            }
            .decode(type: [Repository].self, decoder: JSONDecoder())
            .mapError(APIError.parseError)
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
