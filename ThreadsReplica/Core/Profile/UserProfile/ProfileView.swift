//
//  ProfileView.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 15.01.2024.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    var body: some View {
        
        ScrollView (showsIndicators: false) {
            //bio and stats
            VStack (spacing:20){
                ProfileHeaderView(user: user)
                
                Button {
                    
                }label:{
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.white)
                        .frame(width:352, height: 32)
                        .background(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                //user content list view
                UserContentListView()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal)
        
    }
}
