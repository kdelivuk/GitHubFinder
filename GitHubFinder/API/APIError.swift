//
//  APIError.swift
//  API
//
//  Created by Kristijan Delivuk on 10/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import Foundation

enum APIError: Error {
    case statusCode
    case responseError
    case apiError(String)
    case parseError(Error)
}
