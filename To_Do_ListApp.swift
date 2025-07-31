//
//  To_Do_ListApp.swift
//  RecallMe
//
//  Created by Scholar on 7/31/25.
//

import SwiftUI
import SwiftData

@main
struct To_Do_ListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}

