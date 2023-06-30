//
//  Unbound_TravelApp.swift
//  Unbound Travel
//
//  Created by Victor Chandra on 30/06/23.
//

import SwiftUI

@main
struct Unbound_TravelApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
