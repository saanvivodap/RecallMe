// ContactListView.swift
import SwiftUI
import SwiftData

struct ContactListView: View {
  @State private var showNewContact = false
  @Query var contacts: [ContactItem]
  @Environment(\.modelContext) var modelContext

  var body: some View {
    VStack {
      HStack {
        Text("Contacts")
          .font(.system(size: 40))
          .fontWeight(.black)
        Spacer()
        Button {
          withAnimation {
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
              Text("❗" + contact.name)
                .font(.headline)
            } else {
              Text(contact.name)
                .font(.headline)
            }
            Text(contact.number)
              .font(.subheadline)
              .foregroundColor(.gray)
          }
        }
        .onDelete(perform: deleteContact)
      }
    }
    
    .sheet(isPresented: $showNewContact) {
      NewContact(showNewContact: $showNewContact)
    }
  }

  func deleteContact(at offsets: IndexSet) {
    for offset in offsets {
      let contact = contacts[offset]
      modelContext.delete(contact)
    }
      
  }
}


#Preview {
  ContactListView()
    .modelContainer(for: ContactItem.self)
}
