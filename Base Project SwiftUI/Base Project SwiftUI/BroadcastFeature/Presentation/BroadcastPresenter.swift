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
    var view: BroadcastViewUpdater
    
    init(view: BroadcastViewUpdater) {
        self.view = view
    }
    
    func showData(_ broadcasts: [BroadcastViewModel]) {
        view.display(broadcasts)
    }
}
