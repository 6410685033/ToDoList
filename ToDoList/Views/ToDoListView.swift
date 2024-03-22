//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Thammasat Thonggamgaew on 8/3/2567 BE.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListItemViewModel()
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListView()
}
