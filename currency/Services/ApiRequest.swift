//
//  ApiRequest.swift
//  currency
//
//  Created by Ilya Dolgopolov on 22/03/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Foundation


class ApiRequest {
    
    private var url: URL
    private var httpMethod: HttpMethod = .get
    private var parameters: [String : Any]?
    private var headers: [String: String] = [:]
    var completionHandler: ((Data?, URLResponse?, Error?) -> Void) = { (_, _, _) in }
    var task: URLSessionDataTask!
    
    init(url: URL,
         httpMethod: HttpMethod = .get,
         parameters: [String : Any]? = nil,
         headers: [String: String] = [:],
         completionHandler: @escaping ((Data?, URLResponse?, Error?) -> Void)) {
        
        self.url = url
        self.httpMethod = httpMethod
        self.parameters = parameters
        self.headers = headers
        self.completionHandler = completionHandler
    }
    
    func execute() {
        var request = URLRequest(url: url)
        
        request.httpMethod = httpMethod.rawValue
        request.allHTTPHeaderFields = headers
        
        
        task = URLSession.shared.dataTask(with: request, completionHandler: completionHandler)
        
        task.resume()
    }
}
