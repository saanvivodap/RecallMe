//
//  ContactListView.swift
//  RecallMe
//
//  Created by Tiger on 7/30/25.
//

import SwiftUI
import SwiftData

struct ContactListView: View {
  @State private var showNewContact = false
  @Query var contacts: [ContactItem]
  @Environment(\.modelContext) var modelContext

  var body: some View {
    VStack {
      HStack{
        Text("Contacts")
          .font(.system(size:40))
          .fontWeight(.black)
        Spacer()
        Button {
          withAnimation{
            showNewContact = true
          }
        } label: {
          Text("+")
            .font(.title)
            .fontWeight(.bold)
        }
      }
      .padding()

      List {
        ForEach(contacts) { contact in
          VStack(alignment: .leading) {
            if contact.isImportant {
              Text("❗" + contact.name).font(.headline)
            } else {
              Text(contact.name).font(.headline)
            }
            Text(contact.number).font(.subheadline).foregroundColor(.gray)
          }
        }
      }

      if showNewContact {
        NewContact(showNewContact: $showNewContact, contactItem: ContactItem(name: "", number: "", isImportant: false))
      }
    }
  }
}

#Preview {
  ContactListView()
    .modelContainer(for: ContactItem.self)
}
