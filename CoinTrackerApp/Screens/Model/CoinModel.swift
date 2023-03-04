//
//  CoinModel.swift
//  CoinTrackerApp
//
//  Created by macbook pro on 4.03.2023.
//

import Foundation

// MARK: - Coin
struct CoinResponse: Codable {
    var status: String?
    var data: DataClass?
}

// MARK: - DataClass
struct DataClass: Codable {
    var stats: Stats?
    var coins: [Coin]?
}

// MARK: - CoinElement
struct Coin: Codable {
    var uuid, symbol, name: String?
    var color: String?
    var iconURL: String?
    var marketCap, price: String?
    var listedAt, tier: Int?
    var change: String?
    var rank: Int?
    var sparkline: [String]?
    var lowVolume: Bool?
    var coinrankingURL: String?
    var the24HVolume, btcPrice: String?

    enum CodingKeys: String, CodingKey {
        case uuid, symbol, name, color
        case iconURL = "iconUrl"
        case marketCap, price, listedAt, tier, change, rank, sparkline, lowVolume
        case coinrankingURL = "coinrankingUrl"
        case the24HVolume = "24hVolume"
        case btcPrice
    }
}

// MARK: - Stats
struct Stats: Codable {
    var total, totalCoins, totalMarkets, totalExchanges: Int?
    var totalMarketCap, total24HVolume: String?

    enum CodingKeys: String, CodingKey {
        case total, totalCoins, totalMarkets, totalExchanges, totalMarketCap
        case total24HVolume = "total24hVolume"
    }
}
