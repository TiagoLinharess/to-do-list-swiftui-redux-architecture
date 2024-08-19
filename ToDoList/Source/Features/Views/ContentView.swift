//
//  ContentView.swift
//  ToDoList
//
//  Created by Tiago Linhares on 18/08/24.
//

import SwiftUI

extension Features.ToDoList {
    // MARK: - View
    struct ContentView: View {
        // MARK: - Properties
        @StateObject var store = AppStore(initialState: .init(),
                                          reducer: reducer)
        
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

