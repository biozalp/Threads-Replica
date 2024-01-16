//
//  ContentViewModel.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 16.01.2024.
//

import Foundation
import Combine
import Firebase


class ContentViewModel: ObservableObject{
    @Published var userSession: FirebaseAuth.User?
    private var cancelables = Set <AnyCancellable>()
    
    init(){
        setupSubscribers()
    }
    
    private func setupSubscribers(){
        AuthService.shared.$userSession.sink{ [weak self] userSession in
            self?.userSession = userSession
        }.store(in: &cancelables)
    }
}
