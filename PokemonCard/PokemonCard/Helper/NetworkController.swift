//
//  NetworkController.swift
//  PokemonCard
//
//  Created by karlina.engere on 10/02/2021.
//

import Foundation


class NetworkController {
    
    enum  HTTTMethod: String {
        case get = "GET"
        case put = "PUT"
        case post = "POST"
        case delete = "DELETE"
    }
    
    static func performRequest(for url: URL,
                               httpMethod: HTTTMethod,
                               urlParams: [String: String]? = nil,
                               body: Data? = nil,
                               comletion: ((Data?, Error?) -> Void)? = nil ){
        
        
        let requestURL = self.url(byAdding: urlParams, to: url)
        var request = URLRequest(url: requestURL)
        request.httpMethod = httpMethod.rawValue
        request.httpBody = body
        
        let dataTask = URLSession.shared.dataTask(with: request) { (data, response, error) in
            comletion?(data, error)
            
        }
        dataTask.resume()
        
    }
    static func url(byAdding params: [String: String]? , to url: URL) -> URL {
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        
        components?.queryItems = params?.compactMap {
            URLQueryItem(name: $0.key, value: $0.value)
        }
        
        guard let url = components?.url else {
            fatalError("URL components is nil")
        }
        return url
    }

}

