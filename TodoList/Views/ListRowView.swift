//
//  ListRowView.swift
//  TodoList
//
//  Created by Duy Dinh Le Manh on 4/3/26.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? .blue : .red)
            Text(item.title)
            Spacer()
        }
        .padding(.vertical)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ListRowView(item: ItemModel(title: "preview true", isCompleted: true))
}


#Preview(traits: .sizeThatFitsLayout) {
    ListRowView(item: ItemModel(title: "preview false", isCompleted: false))
}
