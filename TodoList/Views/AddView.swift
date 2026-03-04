//
//  AddView.swift
//  TodoList
//
//  Created by Duy Dinh Le Manh on 4/3/26.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText = ""
    
    var body: some View {
        ScrollView {
            Text(textFieldText)
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(14)
                    .frame(height: 55)
                    .background(Color.red)
                    .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("save".uppercased())
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }

            }
            .padding(.horizontal)
        }
        .navigationTitle("Add an item")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
