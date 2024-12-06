//
//  BroadcastViewComposer.swift
//  Base Project SwiftUI
//
//  Created by Georges Khoury on 06/12/2024.
//

import Foundation
import SwiftUI

enum BroadcastViewComposer {
    
    static func make() -> some View {
        var adapter = BroadcastViewAdapter()
        let viewUpdater = BroadcastViewStore()
        let presenter = BroadcastPresenter(view: WeakRefVirtualProxy(viewUpdater))
        adapter.presenter = presenter
        
        return BroadcastView(
            onRefresh: adapter.fetchData,
            state: viewUpdater
        )
    }
}
