// NewContact.swift
import SwiftUI
import SwiftData

struct NewContact: View {
  @Binding var showNewContact: Bool
  @State private var name: String = ""
  @State private var number: String = ""
  @State private var isImportant: Bool = false
  @Environment(\.modelContext) var modelContext

  var body: some View {
    VStack(spacing: 20) {
      Text("Add New Contact")
        .font(.title)
        .fontWeight(.bold)

      TextField("Enter their name here...", text: $name, axis: .vertical)
        .padding()
        .background(Color(.systemGroupedBackground))
        .cornerRadius(15)
        .padding(.horizontal)

      TextField("Enter their number here...", text: $number, axis: .vertical)
        .keyboardType(.phonePad)
        .padding()
        .background(Color(.systemGroupedBackground))
        .cornerRadius(15)
        .padding(.horizontal)

      Toggle("Is it important?", isOn: $isImportant)
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
    let contact = ContactItem(name: name, number: number, isImportant: isImportant)
    modelContext.insert(contact)
  }
}

#Preview {
  NewContact(showNewContact: .constant(false))
}
