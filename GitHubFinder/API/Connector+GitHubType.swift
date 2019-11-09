//
//  Connector+GitHubType.swift
//  API
//
//  Created by Kristijan Delivuk on 09/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import Foundation
import Combine

public protocol GitHubType {
    func search(with parameter: String) -> AnyPublisher<[Repository], Error>
}
