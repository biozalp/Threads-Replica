//
//  EditProfileView.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 15.01.2024.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])
                VStack{
                    //name and pp
                    HStack{
                        VStack(alignment: .leading){
                            Text("Name")
                                .fontWeight(.semibold)
                            Text("Berk Ilgar Ozalp")
                        }
                        
                        Spacer()
                        
                        CircleProfileImageView()
                    }
                    
                    Divider()
                    
                    //bio field
                    VStack (alignment: .leading){
                        Text("Bio")
                            .fontWeight(.semibold)
                            .font(.footnote)
                        TextField("Enter your bio...", text: $bio, axis: .vertical)
                    }
                    
                    Divider()
                    
                    //link field
                    VStack (alignment: .leading){
                        Text("Link")
                            .fontWeight(.semibold)
                            .font(.footnote)
                        TextField("Add Link...", text: $link)
                    }
                    
                    Divider()
                    
                    Toggle("Private profile", isOn: $isPrivateProfile)
                    
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding()
                
            }
            
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem (placement: .topBarLeading){
                    Button ("Cancel") {
                        
                    }
                    .font(.subheadline)
                    .foregroundStyle(Color.black)
                    
                }
                ToolbarItem (placement: .topBarTrailing){
                    Button ("Done") {
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.black)
                    
                }
            }
        }
    }   
}

#Preview {
    EditProfileView()
}
