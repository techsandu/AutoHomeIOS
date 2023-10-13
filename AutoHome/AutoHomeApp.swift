//
//  AutoHomeApp.swift
//  AutoHome
//
//  Created by Sandeep on 31/08/23.
//

import SwiftUI

@main
struct AutoHomeApp: App {
    var body: some Scene {
        @StateObject private var dataController = CardDataController()
        WindowGroup {
            ContentView()
                .environmentObject(\.managedObjectContext,dataController.container.viewContext)
            
        }
    }
}
