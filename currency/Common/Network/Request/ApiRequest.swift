//
//  ApiRequest.swift
//  
//
//  Created by Ilya Dolgopolov on 18/09/2019.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation

// swiftlint:disable all
class ApiRequest {

    private var urlSession: URLSession

    private let configuration = URLSessionConfiguration.default

    var completionHandler: ((Data?, URLResponse?, Error?) -> Void) = { _, _, _ in }

    init(timeoutForRequest: TimeInterval? = nil,
         timeoutForResponse: TimeInterval? = nil) {

        if let timeoutIntervalForRequest = timeoutForRequest {
            configuration.timeoutIntervalForRequest = timeoutIntervalForRequest
        }

        if let timeoutIntervalForResponse = timeoutForResponse {
            configuration.timeoutIntervalForResource = timeoutIntervalForResponse
        }

        self.urlSession = URLSession(configuration: configuration)
    }

    deinit {
        urlSession.invalidateAndCancel()
    }

    // MARK: - Public methods

    func execute(url: URL,
                 httpMethod: HttpMethod = .get,
                 parameters: [String: Any]? = nil,
                 headers: [String: String] = [:],
                 encoding: RequestParameterEncoding = JSONEncoding(),
                 completionHandler: @escaping ((Data?, URLResponse?, Error?) -> Void)) {

        var request = URLRequest(url: url)

        request.httpMethod = httpMethod.rawValue
        request.allHTTPHeaderFields = headers

        if let parameters = parameters {
            request = encoding.encode(request, with: parameters)
            if let data = request.httpBody {
                Logger.printd(String(data: data, encoding: .utf8))
            }
        }

        let task = urlSession.dataTask(with: request, completionHandler: completionHandler)
        task.resume()
    }

    func cancel() {
        urlSession.getAllTasks { tasks in
            tasks.last?.cancel()
        }
    }

    func cancelAllTasks() {
        urlSession.getAllTasks { tasks in
            tasks.forEach { $0.cancel() }
        }
    }
}
