//
//  AddView.swift
//  TodoList
//
//  Created by Duy Dinh Le Manh on 4/3/26.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var vm: ListViewModel
    @State var textFieldText = ""
    @State var alertTitle: String = ""
    @State var alertIsPresented: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(14)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                
                Button {
                    addItem()
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
        .alert("Error!", isPresented: $alertIsPresented) {
            
        } message: {
            Text(alertTitle)
        }
    }
    
    func addItem() {
        guard isValidText() else {
            return
        }
        vm.addItem(title: textFieldText)
        presentationMode.wrappedValue.dismiss()
    }
    
    func isValidText() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Title must be at least 3 characters"
            alertIsPresented.toggle()
            return false
        }
        return true
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
