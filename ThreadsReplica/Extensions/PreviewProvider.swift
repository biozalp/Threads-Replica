//
//  PreviewProvider.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 16.01.2024.
//


import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview{
        return DeveloperPreview.shared
    }
}


class DeveloperPreview{
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Full Name", email: "trial@mail.com", username: "dummyusername")
    
}
