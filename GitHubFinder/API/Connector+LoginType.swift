//
//  Connector+LoginType.swift
//  API
//
//  Created by Kristijan Delivuk on 17/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import Foundation

extension Connector {
//    public func getAccessToken(clientID: String, clientSecret: String, code: String, redirectURL: String, completion: @escaping(String, Error?) -> Void) {
//        let url = "https://github.com/login/oauth/access_token"
//        
//        var parameters = [String : String]()
//        parameters["client_id"] = clientID
//        parameters["client_secret"] = clientSecret
//        parameters["code"] = code
//        parameters["redirect_uri"] = redirectURL
//        
//        var headers = [String : String]()
//        headers["Accept"] = "application/json"
//        
//        self.get(url: url, parameters: parameters, headers: headers) { (data, _, error) in
//            if let data = data {
//                do {
//                    let model = try JSONDecoder().decode(AccessTokenResponse.self, from: data)
//                    completion(model, error)
//                } catch {
//                    completion(nil, error)
//                }
//            } else {
//                completion(nil, error)
//            }
//        }
//    }
}
