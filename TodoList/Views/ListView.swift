//
//  ListView.swift
//  TodoList
//
//  Created by Duy Dinh Le Manh on 4/3/26.
//

import SwiftUI

struct ListView: View {
    
    @State var items = [
        "This is first title",
        "This is second",
        "Third!"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
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


