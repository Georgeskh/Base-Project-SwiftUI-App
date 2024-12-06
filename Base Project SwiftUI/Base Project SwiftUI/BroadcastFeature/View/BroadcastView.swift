//
//  BroadcastView.swift
//  Base Project SwiftUI
//
//  Created by Georges Khoury on 01/12/2024.
//

import SwiftUI

struct BroadcastView: View {
    
    //MARK: - Properties
    @StateObject private var state: BroadcastViewStore
    private let onRefresh: () -> Void
    
    init(onRefresh: @escaping (() -> Void), state: BroadcastViewStore) {
        self.onRefresh = onRefresh
        self._state = StateObject(wrappedValue: state)
    }
    
    //MARK: - Body
    var body: some View {
        List {
            ForEach(state.broadcasts) { model in
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
        onRefresh: {},
        state: BroadcastViewStore()
    )
}
