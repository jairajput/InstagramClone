//
//  LoginViewModel.swift
//  Instagram App
//
//  Created by Jai  on 20/08/23.
//

import Foundation
class LoginViewModel:ObservableObject{
    @Published var email = ""
    @Published var password = ""
    
    
    func signIn() async throws {
       try await AuthService.shared.login(withEmail: email, password: password)
    }
}
