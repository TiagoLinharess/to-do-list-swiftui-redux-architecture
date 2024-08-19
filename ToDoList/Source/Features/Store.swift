//
//  Store.swift
//  ToDoList
//
//  Created by Tiago Linhares on 18/08/24.
//

import Combine

extension Features.ToDoList {
    // MARK: = Typealias
    typealias AppStore = Store<AppState, AppAction>
    
    // MARK: - Store
    final class Store<AppState, AppAction>: ObservableObject {
        // MARK: - Properties
        @Published private(set) var state: AppState
        private let reducer: Reducer<AppState, AppAction>
        
        // MARK: - Initialize
        init(initialState: AppState, reducer: @escaping Reducer<AppState, AppAction>) {
            self.state = initialState
            self.reducer = reducer
        }
        
        // MARK: - Dispatch
        func dispatch(action: AppAction) {
            reducer(&state, action)
        }
    }
}
