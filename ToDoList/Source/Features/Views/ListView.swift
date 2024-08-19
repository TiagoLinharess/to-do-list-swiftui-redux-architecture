//
//  ListView.swift
//  ToDoList
//
//  Created by Tiago Linhares on 19/08/24.
//

import SwiftUI
extension Features.ToDoList {
    // MARK: - View
    struct ListView<Store: AppStoreProtocol>: View {
        // MARK: - Properties
        @EnvironmentObject var store: Store
        
        // MARK: - Body
        var body: some View {
            ForEach(store.state.toDoItems) { item in
                ItemView<Store>(item: item)
            }
        }
    }
}
