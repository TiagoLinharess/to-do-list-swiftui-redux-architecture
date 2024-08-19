//
//  Action.swift
//  ToDoList
//
//  Created by Tiago Linhares on 18/08/24.
//

extension Features.ToDoList {
    // MARK: - Action
    enum AppAction {
        case add(item: ItemViewModel)
        case remove(item: ItemViewModel)
        case toggle(item: ItemViewModel)
    }
}
