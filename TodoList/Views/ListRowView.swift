//
//  ListRowView.swift
//  TodoList
//
//  Created by Duy Dinh Le Manh on 4/3/26.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "Preview")
}
