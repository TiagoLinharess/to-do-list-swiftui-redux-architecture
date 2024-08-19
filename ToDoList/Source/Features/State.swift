//
//  State.swift
//  ToDoList
//
//  Created by Tiago Linhares on 18/08/24.
//

extension Features.ToDoList {
    // MARK: - State
    struct AppState: Equatable {
        // MARK: - Properties
        var toDoItems: [ItemViewModel] = []
        
        // MARK: - Equatable
        static func == (lhs: Features.ToDoList.AppState, rhs: Features.ToDoList.AppState) -> Bool {
            lhs.toDoItems.first?.id == rhs.toDoItems.first?.id
        }
    }
}
