//
// CryptoModel.swift
// CryptoTracker
//
// Created by Tech With Talal on 1/27/25.
//

import SwiftUI

struct CryptoModel: Identifiable, Decodable {
    let id: String
    let name: String
    let image: String
    let current_price: Double
    let price_change_percentage_24h: Double
}
