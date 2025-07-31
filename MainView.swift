//
//  MainView.swift
//  RecallMe
//
//  Created by Scholar on 7/31/25.
//

import SwiftUI
import SwiftData

struct MainView: View {
    @Environment(\.modelContext) private var content
    @State private var showNewTask = false
    @Query var ToDos: [ToDoItem]
    
    var body: some View {
        VStack{
            HStack{
                Text("To Do List")
                    .font(.system(size:40))
                    .fontWeight(.black)
                Spacer()
                Button{
                    withAnimation {
                        showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
            }
        }
        .padding()
        Spacer()
        List{
            ForEach(ToDos) { toDoItem in
                if toDoItem.isImportant{
                    Text("!!" + toDoItem.title)
                } else{
                    Text(toDoItem.title)
                }
            }
        }
        if showNewTask {
            NewToDo(toDoItem: ToDoItem(title: "", isImportant: false), showNewTask: $showNewTask)
    }
    
    }
}

#Preview {
    ContentView()
        .modelContainer(for: ToDoItem.self)
}

