//
//  ProfileThreadFilter.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 15.01.2024.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable{
    case threads
    case replies
    
    
    var title: String{
        switch self{
        case.threads: return "Threads"
        case.replies: return "Replies"
        

        }
    }
    var id: Int {return self.rawValue}
}
