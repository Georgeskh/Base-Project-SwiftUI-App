//
//  BroadcastViewStore.swift
//  Base Project SwiftUI
//
//  Created by Georges Khoury on 06/12/2024.
//

import Foundation

class BroadcastViewStore: ObservableObject, BroadcastViewUpdater {
    @Published private(set) var broadcasts = [BroadcastViewModel]()
    
    func display(_ broadcasts: [BroadcastViewModel]) {
        self.broadcasts = broadcasts
    }
}
