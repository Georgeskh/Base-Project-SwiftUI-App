//
//  BroadcastPresenter.swift
//  Base Project SwiftUI
//
//  Created by Georges Khoury on 06/12/2024.
//

import Foundation

protocol BroadcastViewUpdater {
    func display(_ broadcasts: [BroadcastViewModel])
}

struct BroadcastPresenter {
    private let view: BroadcastViewUpdater
    
    init(view: BroadcastViewUpdater) {
        self.view = view
    }
    
    func showData(_ broadcasts: [String]) {
        // For more complex Mapping we can inject a mapper in the Presenter
        let viewModel = broadcasts.map { BroadcastViewModel(id: UUID(), text: $0) }
        view.display(viewModel)
    }
}
