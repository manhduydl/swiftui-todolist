//
//  ListView.swift
//  TodoList
//
//  Created by Duy Dinh Le Manh on 4/3/26.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var vm: ListViewModel
    
    var body: some View {
        List {
            ForEach(vm.items) { item in
                ListRowView(item: item)
                    .alignmentGuide(.listRowSeparatorLeading) { _ in
                        0
                    }
                    .onTapGesture {
                        withAnimation {
                            vm.updateItem(item)
                        }
                    }
            }
            .onDelete(perform: vm.deleteItems)
            .onMove(perform: vm.moveItem)
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


