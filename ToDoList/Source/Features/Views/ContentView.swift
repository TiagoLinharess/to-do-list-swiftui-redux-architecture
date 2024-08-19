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
                FormView<Store>()
                ListView<Store>()
                Spacer()
            }
            .environmentObject(store)
            .padding()
        }
    }
}

