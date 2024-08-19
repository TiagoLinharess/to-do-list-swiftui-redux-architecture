//
//  Reducer.swift
//  ToDoList
//
//  Created by Tiago Linhares on 18/08/24.
//

extension Features.ToDoList {
    // MARK: - Typealias
    typealias Reducer<AppState, AppAction> = (inout AppState, AppAction) -> Void
    
    // MARK: - Reducer
    static func reducer(state: inout AppState, action: AppAction) {
        switch action {
        case let .add(item):
            state.toDoItems.append(item)
        case let .remove(item):
            state.toDoItems.removeAll(where: { $0.id == item.id })
        case let .toggle(item):
            guard let index = state.toDoItems.firstIndex(where: { $0.id == item.id }) else { return }
            state.toDoItems[index].isDone.toggle()
        }
    }
}
