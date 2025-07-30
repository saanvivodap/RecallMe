//
//  NewContact.swift
//  RecallMe
//
//  Created by Tiger on 7/30/25.
//

import SwiftUI

struct NewContact: View {
  @Binding var showNewContact: Bool
  @Bindable var contactItem: ContactItem
  @Environment(\.modelContext) var modelContext

  var body: some View {
    VStack(spacing: 20) {
      Text("Add New Contact")
        .font(.title)
        .fontWeight(.bold)

      TextField("Enter their name here...", text: $contactItem.name, axis: .vertical)
        .padding()
        .background(Color(.systemGroupedBackground))
        .cornerRadius(15)
        .padding(.horizontal)

      TextField("Enter their number here...", text: $contactItem.number, axis: .vertical)
        .keyboardType(.phonePad)
        .padding()
        .background(Color(.systemGroupedBackground))
        .cornerRadius(15)
        .padding(.horizontal)

      Toggle("Is it important?", isOn: $contactItem.isImportant)
        .padding(.horizontal)

      Button {
        addContact()
        showNewContact = false
      } label: {
        Text("Save")
          .fontWeight(.semibold)
          .padding()
          .frame(maxWidth: .infinity)
          .background(Color.blue)
          .foregroundColor(.white)
          .cornerRadius(10)
          .padding(.horizontal)
      }
    }
    .padding()
  }

  func addContact() {
    let contact = ContactItem(name: contactItem.name, number: contactItem.number, isImportant: contactItem.isImportant)
    modelContext.insert(contact)
  }
}

#Preview {
  NewContact(showNewContact: .constant(false), contactItem: ContactItem(name: "", number: "", isImportant: false))
}
