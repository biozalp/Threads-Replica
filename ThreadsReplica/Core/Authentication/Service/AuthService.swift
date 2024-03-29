//
//  AuthService.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 15.01.2024.
//

import Firebase
import FirebaseFirestoreSwift

class AuthService{
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func loginUser(withEmail email: String, password: String ) async throws{
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            try await UserService.shared.fetchCurrentUser()
        } catch {
            print("DEBUG: Failed to login user with error \(error.localizedDescription)")
        }
    }
    @MainActor
    func createUser(withEmail email: String, password: String, fullname:String, username:String ) async throws{
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            try await uploadUserData(id: result.user.uid, withEmail: email, fullname: fullname, username: username)
        } catch {
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }
    
    func signOut(){
        try? Auth.auth().signOut() //sign out from firebase
        self.userSession = nil //sign out from session locally
        UserService.shared.reset() //sets current user to nil
    }
    
    @MainActor
    private func uploadUserData(
        
        id: String,
        withEmail email: String,
        fullname:String,
        username:String 
    ) async throws{
        let user = User(id: id, fullname: fullname, email: email, username: username)
        guard let userData =  try? Firestore.Encoder().encode(user) else {return}
        try await Firestore.firestore().collection("users").document(id).setData(userData)
        UserService.shared.currentUser = user
    }
}
