//
//  APIManager.swift
//  CoinTrackerApp
//
//  Created by macbook pro on 4.03.2023.
//

import UIKit

typealias Handler = (Result<CoinResponse, DataError>) -> Void

class APIManager {
    static let shared = APIManager()
    private init() {}
    
    func getCoins(completion: @escaping Handler) {
        guard let url = URL(string: Constant.API.url) else { completion(.failure(DataError.failedToURL)); return }
        
        URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, err in
            guard let data = data, err == nil else { return }
            
            do {
                let coins = try JSONDecoder().decode(CoinResponse.self, from: data)
                completion(.success(coins))
            } catch {
                print("error")
            }
        }.resume()
    }
}

enum DataError: Error {
    case failedToURL
    case failedToGetData
}
