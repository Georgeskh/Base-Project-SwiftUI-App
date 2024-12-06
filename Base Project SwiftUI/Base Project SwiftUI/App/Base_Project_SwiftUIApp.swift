//
//  Base_Project_SwiftUIApp.swift
//  Base Project SwiftUI
//
//  Created by Georges Khoury on 01/12/2024.
//

import SwiftUI

@main
struct Base_Project_SwiftUIApp: App {
    
    var body: some Scene {
        WindowGroup {
            BroadcastViewComposer.make()
        }
    }
}
