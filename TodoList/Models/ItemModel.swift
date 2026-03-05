//
//  ItemModel.swift
//  TodoList
//
//  Created by Duy Dinh Le Manh on 4/3/26.
//

import Foundation

struct ItemModel: Identifiable, Equatable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }

    func copy(title: String? = nil, isCompleted: Bool? = nil) -> ItemModel {
        return ItemModel(
            id: id,
            title: title ?? self.title,
            isCompleted: isCompleted ?? self.isCompleted
        )
    }
}

