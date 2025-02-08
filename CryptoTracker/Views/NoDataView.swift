//
// NoDataView.swift
// CryptoTracker
//
// Created by Tech With Talal on 1/27/25.
//

import SwiftUI

struct NoDataView: View {
    var body: some View {
        VStack {
            Text("No data available")
                .font(.headline)
                .foregroundStyle(.gray)
                .padding()

            Text("Please check your connection or try again later")
                .font(.subheadline)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    NoDataView()
}
