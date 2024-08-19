//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Tiago Linhares on 18/08/24.
//

import SwiftUI

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            Features.ToDoList.ContentView(store: Features.ToDoList.AppStore(initialState: .init(),
                                                                            reducer: Features.ToDoList.reducer))
        }
    }
}
