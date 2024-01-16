//
//  UserCell.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 15.01.2024.
//

import SwiftUI
import Foundation

struct UserCell: View {
    let user: User
    
    var body: some View {
        HStack{
            CircleProfileImageView()
            VStack (alignment:.leading, spacing:4){
                HStack{
                    Text(user.username)
                        .fontWeight(.semibold)
                    
                }
                Text(user.fullname)
                    
            }.font(.footnote)
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height:32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }.padding(.horizontal)
    }
}
