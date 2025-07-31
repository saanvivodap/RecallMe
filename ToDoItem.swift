//
//  ToDoItem.swift
//  RecallMe
//
//  Created by Scholar on 7/31/25.
//

import Foundation
import SwiftData

class toDoItem{
    var title: String
    var isImportant: Bool
    
    init(title: String, isImportant: Bool) {
        self.title = title
        self.isImportant = isImportant
    }
}

#Preview {
    ToDoItem()
}
