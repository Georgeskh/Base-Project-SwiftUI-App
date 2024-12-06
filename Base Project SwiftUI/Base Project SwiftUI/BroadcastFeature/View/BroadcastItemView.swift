//
//  BroadcastItemView.swift
//  Base Project SwiftUI
//
//  Created by Georges Khoury on 01/12/2024.
//

import SwiftUI

struct BroadcastItemView: View {
    let model: BroadcastViewModel
    var body: some View {
        Text(model.text)
    }
}

#Preview {
    BroadcastItemView(model: BroadcastViewModel(id: UUID(), text: "Huge"))
}
