//
//  LoginView.swift
//  ToDoList
//
//  Created by Thammasat Thonggamgaew on 8/3/2567 BE.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack{
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
                
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "Log In", background: .blue) {
                        
                    }
                }
                VStack {
                    Text("New Around Here")
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
