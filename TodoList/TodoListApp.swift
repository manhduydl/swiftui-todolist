//
//  TodoListApp.swift
//  TodoList
//
//  Created by Duy Dinh Le Manh on 4/3/26.
//

/*
 
 MVVM Architecture
 
 Model: data point
 View: UI
 ViewModel: manage model for View
 
 */

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
        }
        .environmentObject(listViewModel)
    }
}
