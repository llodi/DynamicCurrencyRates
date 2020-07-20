//
//  NetworkServerProvider.swift
//
//
//  Created by Ilya Dolgopolov on 18/09/2019.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation

// swiftlint:disable all
class NetworkServerProvider: ApiProvider {

    private var baseUrl: URL?
    private var apiRequest: ApiRequest

    required init(serverUrl: URL?,
                  timeoutForRequest: TimeInterval?,
                  timeoutForResponse: TimeInterval?) {
        baseUrl = serverUrl
        apiRequest = ApiRequest(timeoutForRequest: timeoutForRequest,
                                timeoutForResponse: timeoutForResponse)
    }

    func request(path: String,
                 method: HttpMethod,
                 parameters: ApiParametersProtocol?,
                 completion: @escaping (Data?, ApiErrorProtocol?) -> Void) {

        guard var url = baseUrl else { return }

        let allHeaders = parameters?.headers ?? [:]
        var path = path

        var encoding: RequestParameterEncoding = JSONEncoding()

        if let args = parameters?.arguments?.dictionary, !args.isEmpty {
            url = URLUtils.buildUrl(baseURL: url, arguments: args)
        }

        if let pathComponent = parameters?.pathComponent, !pathComponent.isEmpty {
            path = URLUtils.buildUrl(path: path, components: pathComponent)
        }

        if let value = allHeaders[ApiConstants.HeaderKey.contentType],
        value.lowercased() == ApiConstants.ContentType.wwwForm.lowercased() {

            encoding = URLEncoding()
        }

        Logger.printd("\n===== REQ \(method) \(String(describing: path)) START =====\n")
        Logger.printd(parameters?.headers ?? [:])

        print("URL: \(url.appendingPathComponent(path))")
        apiRequest
            .execute(url: url.appendingPathComponent(path),
                     httpMethod: method,
                     parameters: parameters?.body?.dictionary,
                     headers: allHeaders,
                     encoding: encoding) {
                        [weak self] data, response, error in

                        if let err = error {
                            Logger.printd(err)
                            let urlCode = URLError.Code(rawValue: (err as NSError).code)

                            DispatchQueue.main.async {
                                completion(nil, ApiError(failureReason: err.localizedDescription,
                                                         errorCode: urlCode.rawValue))
                            }
                        } else {
                            URLUtils.print(data: data)

                            let err = self?.findError(from: response)

                            DispatchQueue.main.async {
                                completion(data, err)
                            }
                        }

                        Logger.printd("\n===== REQ \(method) \(String(describing: path)) END =====\n")
            }
    }

    func cancelAllRequests() {
        apiRequest.cancelAllTasks()
    }

    func cancelLastRequest() {
        apiRequest.cancel()
    }

    func findError(from response: URLResponse?) -> ApiErrorProtocol? {

        if let resp = response as? HTTPURLResponse,
            ApiConstants.Code.success.contains(resp.statusCode) == false {
            return ApiError(failureReason: nil, errorCode: resp.statusCode)
        }

        return nil
    }
}
