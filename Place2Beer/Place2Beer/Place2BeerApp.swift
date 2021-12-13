//
//  Place2BeerApp.swift
//  Place2Beer
//
//  Created by Romain Baud on 07/12/2021.
//

import SwiftUI

@main
struct Place2BeerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
