//
//  ContentView.swift
//  ToDoList
//
//  Created by Tiago Linhares on 18/08/24.
//

import SwiftUI

extension Features.ToDoList {
    // MARK: - View
    struct ContentView<Store: AppStoreProtocol>: View {
        // MARK: - Properties
        @StateObject var store: Store
        
        // MARK: - Init
        
        init(store: Store) {
            self._store = StateObject(wrappedValue: store)
        }
        
        // MARK: - Body
        var body: some View {
            VStack {
                Button {
                    store.dispatch(action: .add(item: .init(title: "Titulo", isDone: false)))
                } label: {
                    Text("Add Item")
                }
                ForEach(store.state.toDoItems) { item in
                    Text(item.title)
                        .onTapGesture {
                            store.dispatch(action: .remove(item: item))
                        }
                }
            }
            .environmentObject(store)
            .padding()
        }
    }
}

