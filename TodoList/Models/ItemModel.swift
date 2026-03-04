//
//  ItemModel.swift
//  TodoList
//
//  Created by Duy Dinh Le Manh on 4/3/26.
//

import Foundation

struct ItemModel: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var isCompleted: Bool
}

