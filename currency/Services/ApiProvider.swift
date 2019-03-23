//
//  ApiProvider.swift
//  currency
//
//  Created by Ilya Dolgopolov on 27/02/2019.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation
//import Alamofire

class ApiProvider {
    
    private var serverUrl: URL?
    private let successStatusCode = 200 ..< 300
    private let internalErorStatusCode = 999
    private let responseDetailKey: String = "detail"
    
    required init(serverUrl: URL?) {
        self.serverUrl = serverUrl
    }

    func request<M: ApiConvertable>(path: String,
                                    method: HttpMethod = .get,
                                    parameters: ApiParametersProtocol?,
                                    completion: @escaping (M?, ApiErrorProtocol?) -> ()) {

        guard var url = serverUrl else { return }
        
        var path = path
        
        if let pathComponent = parameters?.pathComponent, !pathComponent.isEmpty {
            path = buildUrl(path: path, components: pathComponent)
        }

        if let args = parameters?.arguments?.dictionary, !args.isEmpty {
            url = URLUtils.buildUrl(baseURL: url, arguments: args)
        }

        Logger.printd("\n=========================== REQ \(String(describing: path)) START ========================\n")
        
        
        let request = ApiRequest(url: url.appendingPathComponent(path),
                                 httpMethod: method,
                                 headers: parameters?.headers ?? [:])
        { (data, response, error) in
            Logger.printd(response)
            
            let decoder = JSONDecoder()
            
            if let err = error {
                let apiError = ApiError(failureReason: err.localizedDescription, errorCode: 999)
                Logger.printd(err)
                completion(nil, apiError)
                return
            }
            
            guard let data = data,
                let responseObject = try? decoder.decode(M.self, from: data) else {
                    let apiError =
                        ApiError(failureReason: "Error occured! Please, try again!",
                                 errorCode: 999)
                    Logger.printd(apiError)
                    completion(nil, apiError)
                return
            }
            
            Logger.printd(responseObject.dictionary)
            completion(responseObject, nil)
        }
        
        request.execute()
        
        Logger.printd("\n=========================== REQ \(String(describing: path)) END ========================\n")
        
    }
    private func buildUrl(path: String, components: [String]) -> String {
        let newPath = String(format: path, arguments: components)
        return newPath
    }
}
