//
//  ListViewModel.swift
//  TodoList
//
//  Created by Duy Dinh Le Manh on 5/3/26.
//

import Foundation
internal import Combine
import SwiftUI


class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        fetchData()
    }
    
    private func fetchData() {
        items.append(contentsOf: [
            ItemModel(title: "This is first title", isCompleted: true),
            ItemModel(title: "This is second", isCompleted: false),
            ItemModel(title: "Third", isCompleted: false)
        ])
    }
    
    func deleteItems(at offset: IndexSet) {
        items.remove(atOffsets: offset)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        items.insert(ItemModel(title: title, isCompleted: false), at: 0)
    }
    
    func updateItem(_ item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id}) {
            items[index] = item.copy(isCompleted: !item.isCompleted)
        }
    }
}
