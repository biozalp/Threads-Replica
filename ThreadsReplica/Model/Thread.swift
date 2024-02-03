//
//  Thread.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 3.02.2024.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

struct Thread: Identifiable, Codable{
    @DocumentID var threadId: String?
    
    
    let ownerUid: String
    let caption: String
    let timestamp: Timestamp
    var likes: Int
    
    var id: String {
        return threadId ?? NSUUID().uuidString
    }
    
    var user: User?
    
    
    
}
