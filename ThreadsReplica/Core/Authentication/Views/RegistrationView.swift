//
//  RegistrationView.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 15.01.2024.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var username = ""
    @State private var name = ""
    
    var body: some View {
        VStack{
            Spacer()
            Image("ThreadsAppIcon").resizable()
                .scaledToFit()
                .frame(width: 120, height:120)
                .padding()
            VStack{
                TextField("Email", text: $email)
                    .modifier(ThreadsTextViewModifier())
                
                SecureField("Password", text: $password)
                    .modifier(ThreadsTextViewModifier())
                
                TextField("Full Name", text: $name)
                    .modifier(ThreadsTextViewModifier())
                
                TextField("Username", text: $username)
                    .modifier(ThreadsTextViewModifier())
                
            } .padding()
            Button {} label: {
                Text("Sign Up")
                    .modifier(ThreadsButtonViewModifier())
            }
            Spacer()
            
            Divider()
            
            Button {
                
            } label: {
                HStack {
                    Text("Already have an account?")
                    Text("Login").bold()
                }
                .foregroundStyle(Color.black)
                .font(.footnote)
            }
            .padding(.vertical, 14)
        }
    }
}

#Preview {
    RegistrationView()
}
