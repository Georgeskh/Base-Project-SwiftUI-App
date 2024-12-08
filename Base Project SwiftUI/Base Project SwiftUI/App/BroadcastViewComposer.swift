//
//  BroadcastViewComposer.swift
//  Base Project SwiftUI
//
//  Created by Georges Khoury on 06/12/2024.
//

import Foundation
import SwiftUI

enum BroadcastViewComposer {
    
    static func make(
        broadcastLoader: @escaping () -> Result<[String], Error>
    ) -> some View {
        let viewUpdater = BroadcastViewStore()
        let presenter = BroadcastPresenter(view: WeakRefVirtualProxy(viewUpdater))
        var adapter = BroadcastViewAdapter(
            presenter: presenter,
            loader: broadcastLoader
        )
        
        return BroadcastView(
            store: viewUpdater,
            onRefresh: adapter.loadResource
        )
    }
}
