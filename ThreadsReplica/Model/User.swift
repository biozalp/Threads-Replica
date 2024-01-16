//
//  User.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 16.01.2024.
//

import Foundation

struct User: Identifiable, Codable, Hashable{
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
