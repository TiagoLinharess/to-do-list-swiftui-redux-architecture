//
//  FormView.swift
//  ToDoList
//
//  Created by Tiago Linhares on 19/08/24.
//

import SwiftUI

extension Features.ToDoList {
    // MARK: - View
    struct FormView<Store: AppStoreProtocol>: View {
        // MARK: - Properties
        @EnvironmentObject var store: Store
        @State var title: String = ""
        
        // MARK: - Body
        var body: some View {
            VStack(alignment: .center, spacing: 8) {
                TextField("Title", text: $title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                Button {
                    addItem()
                } label: {
                    Text("Add Item")
                }
            }
        }
        
        // MARK: - Methods
        func addItem() {
            store.dispatch(action: .add(item: .init(title: title, isDone: false)))
        }
    }
}
