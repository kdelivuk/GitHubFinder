//
//  RepositoryResponse.swift
//  Defines
//
//  Created by Kristijan Delivuk on 16/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import Foundation

public struct RepositoryResponse<T: Decodable>: Decodable {
   public let items: [T]
}
