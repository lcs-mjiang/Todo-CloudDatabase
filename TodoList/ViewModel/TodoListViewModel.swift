//
//  TodoListViewModel.swift
//  TodoList
//
//  Created by Michael on 2025/4/2.
//

import Foundation

import Foundation
 
@Observable
class TodoListViewModel {
    
    // MARK: Stored properties
    // The list of to-do items
    var todos: [TodoItem]
    
    // MARK: Initializer(s)
    init(todos: [TodoItem] = []) {
        self.todos = todos
    }
    
    // MARK: Functions
    func createToDo(withTitle title: String) {
        
        // Create the new to-do item instance
        let todo = TodoItem(
            title: title,
            done: false
        )
        
        // Append to the array
        todos.append(todo)
        
    }
    
    func delete(_ todo: TodoItem) {
        
        // Remove the provided to-do item from the array
        todos.removeAll { currentItem in
            currentItem.id == todo.id
        }
        
    }
    
}
