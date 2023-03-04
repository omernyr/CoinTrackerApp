//
//  Constant.swift
//  CoinTrackerApp
//
//  Created by macbook pro on 4.03.2023.
//

import Foundation

enum Constant {
    enum API {
        static let url = "https://psp-merchantpanel-service-sandbox.ozanodeme.com.tr/api/v1/dummy/coins" 
    }
}


enum CoinAPICall: String{
    
    case getCoins
    
    private var urlString: String {
        switch self {
        case .getCoins:
            return "https://psp-merchantpanel-service-sandbox.ozanodeme.com.tr/api/v1/dummy/coins"
        }
    }
    var url: URL{
        switch self {
        case .getCoins:
            return URL(string: urlString)!
        }
    }
}
