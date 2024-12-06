//
//  BroadcastViewAdapter.swift
//  Base Project SwiftUI
//
//  Created by Georges Khoury on 06/12/2024.
//

import Foundation

struct BroadcastViewAdapter {
    var presenter: BroadcastPresenter?
    
    func fetchData() {
        presenter?.showData([BroadcastViewModel(id: UUID(), text: "Fetched Value from Domain layer")])
    }
}
