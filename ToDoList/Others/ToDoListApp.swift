//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Thammasat Thonggamgaew on 8/3/2567 BE.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
