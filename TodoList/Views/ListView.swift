//
//  ListView.swift
//  TodoList
//
//  Created by Duy Dinh Le Manh on 4/3/26.
//

import SwiftUI

struct ListView: View {
    
    @State var items: Array<ItemModel> = [
        ItemModel(title: "This is first title", isCompleted: true),
        ItemModel(title: "This is second", isCompleted: false),
        ItemModel(title: "Third", isCompleted: false)
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
                    .alignmentGuide(.listRowSeparatorLeading) { _ in
                        0
                    }
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("ToDo App 🗒️")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink {
                AddView()
            } label: {
                Text("Add")
            })
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}


