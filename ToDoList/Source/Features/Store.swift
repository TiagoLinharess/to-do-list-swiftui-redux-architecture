//
//  Store.swift
//  ToDoList
//
//  Created by Tiago Linhares on 18/08/24.
//

import Combine

extension Features.ToDoList {
    // MARK: - Protocol
    protocol AppStoreProtocol: ObservableObject {
        var state: AppState { get }
        func dispatch(action: AppAction)
    }
    
    // MARK: - Store
    final class AppStore: AppStoreProtocol {
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
