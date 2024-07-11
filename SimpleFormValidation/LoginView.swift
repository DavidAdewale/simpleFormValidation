//
//  ContentView.swift
//  SimpleFormValidation
//
//  Created by David Adewale on 11/07/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var isFormValid: Bool {
        return !email.isEmpty && !password.isEmpty && email.isValidEmail
    }
    
    
    var body: some View {
        Form {
            TextField("Email", text: $email)
                .textInputAutocapitalization(.never)
            SecureField("Password", text: $password)
            Button("Login"){
                
            }.disabled(!isFormValid)
        }
   
    }
}

#Preview {
    LoginView()
}
