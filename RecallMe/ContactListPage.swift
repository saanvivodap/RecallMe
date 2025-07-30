//
//  ContactListPage.swift
//  RecallMe
//
//  Created by Tiger on 7/30/25.
//

import SwiftUI
import SwiftData

struct ContactListApp: App {
  var body: some Scene {
    WindowGroup {
      ContactListView()
        .modelContainer(for: ContactItem.self)
    }
  }
}
