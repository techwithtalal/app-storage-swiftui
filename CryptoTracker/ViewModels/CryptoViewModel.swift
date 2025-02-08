//
// CryptoViewModel.swift
// CryptoTracker
//
// Created by Tech With Talal on 1/27/25.
//

import SwiftUI

class CryptoViewModel: ObservableObject {

    @Published var cryptoData = [CryptoModel]()

    private let apiURL = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false"

    init() {
        fetchCryptoData()
    }

    private func fetchCryptoData() {
        guard let url = URL(string: apiURL) else {
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in

            if let error = error {
                print("Error fetching data: \(error)")
                return
            }

            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let decodedData = try decoder.decode([CryptoModel].self, from: data)

                    DispatchQueue.main.async {
                        self.cryptoData = decodedData
                    }

                } catch {
                    print("Error decoding data: \(error)")
                }
            }
        }.resume()
    }
}
