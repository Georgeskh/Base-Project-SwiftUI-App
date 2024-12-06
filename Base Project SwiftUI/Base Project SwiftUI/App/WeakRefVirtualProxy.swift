//
//  WeakRefVirtualProxy.swift
//  Base Project SwiftUI
//
//  Created by Georges Khoury on 06/12/2024.
//

import Foundation

class WeakRefVirtualProxy<T: AnyObject> {
    private weak var object: T?
    
    init(_ object: T) {
        self.object = object
    }
}

extension WeakRefVirtualProxy: BroadcastViewUpdater where T: BroadcastViewUpdater {
    func display(_ broadcasts: [BroadcastViewModel]) {
        object?.display(broadcasts)
    }
}
