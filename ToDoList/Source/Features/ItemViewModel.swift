//
//  ItemViewModel.swift
//  ToDoList
//
//  Created by Tiago Linhares on 18/08/24.
//

import Foundation

struct ItemViewModel: Identifiable {
    // MARK: - Properties
    let id: UUID = UUID()
    let title: String
    var isDone: Bool
}
