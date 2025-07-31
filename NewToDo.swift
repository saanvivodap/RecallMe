//
//  NewToDo.swift
//  RecallMe
//
//  Created by Scholar on 7/31/25.
//

import SwiftUI

struct NewToDo: View {
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    @Binding var showNewTask: Bool
    var body: some ToDoItem {
        var body: some View {
            VStack{
                Text("Task Title:")
                    .font(.title)
                    .fontWeight(.bold)
                TextField("Enter a Text description", text: $toDoItem.title, axis: .vertical)
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .padding()
                Toggle(isOn: $toDoItem.isImportant) {
                    Text("Is it important")
                }
                Button {
                    addToDo()
                    showNewTask = false
                } label: {
                    Text("Save")
                }
            }
            .padding()
        }
        func addToDo() {
            let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
            modelContext.insert(toDo)
        }
    }
    
    #Preview {
        NewToDo(toDoItem: ToDoItem(title: "", isImportant: false), showNewTask: .constant(false))
        
    }
    
}
