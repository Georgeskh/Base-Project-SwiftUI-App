//
//  BroadcastView.swift
//  Base Project SwiftUI
//
//  Created by Georges Khoury on 01/12/2024.
//

import SwiftUI

struct BroadcastView: View {
    
    //MARK: - Properties
    @StateObject private var store: BroadcastViewStore
    private let onRefresh: () -> Void
    
    init(store: BroadcastViewStore, onRefresh: @escaping () -> Void) {
        self._store = StateObject(wrappedValue: store)
        self.onRefresh = onRefresh
    }
    
    //MARK: - Body
    var body: some View {
        List {
            ForEach(store.broadcasts) { model in
                BroadcastItemView(model: model)
            }
        }
        .onAppear {
            onRefresh()
        }
        .refreshable {
            onRefresh()
        }
    }
}

#Preview {
    BroadcastView(
        store: BroadcastViewStore(),
        onRefresh: {}
    )
}
