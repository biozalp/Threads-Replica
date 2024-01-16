//
//  ProfileHeaderView.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 16.01.2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    var user: User?
    
    init(user: User?){
        self.user = user
    }
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 12) {
                VStack(alignment: .leading, spacing: 4){
                    //fullname and username
                    Text(user?.fullname ?? "")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text(user?.username ?? "")
                        .font(.subheadline)
                        .font(.caption2)
                    
                }
                if let bio = user?.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
                Text("2000 Followes")
                    .font(.caption)
                    .font(.caption2)
            }
            Spacer()
            CircleProfileImageView()
        }.padding()
    }
}
