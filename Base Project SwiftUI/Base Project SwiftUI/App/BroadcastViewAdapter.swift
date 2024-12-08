//
//  BroadcastViewAdapter.swift
//  Base Project SwiftUI
//
//  Created by Georges Khoury on 06/12/2024.
//

import Foundation

struct BroadcastViewAdapter {
    private let presenter: BroadcastPresenter
    private let loader: () -> Result<[String], Error>
    
    init(presenter: BroadcastPresenter, loader: @escaping () -> Result<[String], Error>) {
        self.presenter = presenter
        self.loader = loader
    }
    
    func loadResource() {
        switch loader() {
        case .success(let values):
            presenter.showData(values)
        case .failure(_):
            break
        }
    }
}
