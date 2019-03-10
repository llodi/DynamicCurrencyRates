//
//  ApiProvider.swift
//  currency
//
//  Created by Ilya Dolgopolov on 27/02/2019.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation
import Alamofire

class ApiProvider {
    
    private var serverUrl: URL?
    private let successStatusCode = 200 ..< 300
    private let internalErorStatusCode = 999
    private let responseDetailKey: String = "detail"
    
    required init(serverUrl: URL?) {
        self.serverUrl = serverUrl
    }

    func request(path: String,
                 method: HttpMethod = .get,
                 parameters: ApiParametersProtocol?,
                 completion: @escaping (Any?, ApiErrorProtocol?) -> ()) {

        guard var url = serverUrl else { return }
        
        var path = path
        
        if let pathComponent = parameters?.pathComponent, !pathComponent.isEmpty {
            path = buildUrl(path: path, components: pathComponent)
        }

        if let args = parameters?.arguments?.toJSON(), !args.isEmpty {
            url = URLUtils.buildUrl(baseURL: url, arguments: args)
        }

        Logger.printd("\n=========================== REQ \(String(describing: path)) START ========================\n")
        
        Alamofire.request(url.appendingPathComponent(path),
                          method: method.convert(),
                          parameters: parameters?.body?.toJSON(),
                          encoding: JSONEncoding.default,
                          headers: parameters?.headers ?? [:])
            .responseJSON { (response) in
                Logger.printd(response.request)
                switch response.result {
                case .success(let value):
                    Logger.printd(value as? [String:Any])
                    completion(value, nil)
                case .failure(let error):
                    let err = ApiError(failureReason: error.localizedDescription, errorCode: response.response?.statusCode ?? 999)
                    completion(nil, err)
                }
                Logger.printd("\n=========================== REQ \(String(describing: path)) END ========================\n")
        }
        
    }
    private func buildUrl(path: String, components: [String]) -> String {
        let newPath = String(format: path, arguments: components)
        return newPath
    }
}
