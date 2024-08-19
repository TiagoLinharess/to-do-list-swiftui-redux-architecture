//
//  ItemView.swift
//  ToDoList
//
//  Created by Tiago Linhares on 19/08/24.
//

import SwiftUI

extension Features.ToDoList {
    // MARK: - View
    struct ItemView<Store: AppStoreProtocol>: View {
        // MARK: - Properties
        @EnvironmentObject var store: Store
        private let item: ItemViewModel
        
        // MARK: - Initialize
        init(item: ItemViewModel) {
            self.item = item
        }
        
        // MARK: - Body
        var body: some View {
            HStack {
                Text(item.title)
                Spacer()
                    .frame(width: 24)
                Image(systemName: item.isDone ? "checkmark.square" : "square")
                    .onTapGesture {
                        store.dispatch(action: .toggle(item: item))
                    }
                Image(systemName: "trash")
                    .onTapGesture {
                        store.dispatch(action: .remove(item: item))
                    }
            }
            .padding()
        }
    }
}
