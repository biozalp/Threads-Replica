//
//  LoginViewModel.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 16.01.2024.
//

import Foundation

class LoginViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func loginUser() async throws{
        try await AuthService.shared.loginUser(
            withEmail: email,
            password: password
        )
    }
}
