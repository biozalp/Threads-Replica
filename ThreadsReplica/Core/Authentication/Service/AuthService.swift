//
//  AuthService.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 15.01.2024.
//

import Firebase

class AuthService{
    
    static let shared = AuthService()
    
    @MainActor
    func login(withEmail email: String, password: String ) async throws{
        
    }
    @MainActor
    func createUser(withEmail email: String, password: String, fullname:String, username:String ) async throws{
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Created used \(result.user.uid)")
        } catch {
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }
}
