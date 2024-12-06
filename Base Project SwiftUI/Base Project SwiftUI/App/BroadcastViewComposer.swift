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
        var adapter = BroadcastViewAdapter(loader: broadcastLoader)
        let viewUpdater = BroadcastViewStore()
        let presenter = BroadcastPresenter(view: WeakRefVirtualProxy(viewUpdater))
        adapter.presenter = presenter
        
        return BroadcastView(
            store: viewUpdater,
            onRefresh: adapter.loadResource
        )
    }
}
