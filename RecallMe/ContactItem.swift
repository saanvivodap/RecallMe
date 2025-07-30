//
//  ContactItem.swift
//  RecallMe
//
//  Created by Tiger on 7/30/25.
//

import Foundation
import SwiftData

@Model
class ContactItem {
  var name: String
  var number: String
  var isImportant: Bool

  init(name: String, number: String, isImportant: Bool) {
    self.name = name
    self.number = number
    self.isImportant = isImportant
  }
}
