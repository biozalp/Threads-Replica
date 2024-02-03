//
//  FeedViewModel.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 3.02.2024.
//

import Foundation

class FeedViewModel: ObservableObject{
    @Published var threads = [Thread]()
    
    init (){
        Task {try await fetchThreads()}
    }
    
    @MainActor
    func fetchThreads() async throws {
        self.threads = try await ThreadService.fetchThreads()
    }
    
}
