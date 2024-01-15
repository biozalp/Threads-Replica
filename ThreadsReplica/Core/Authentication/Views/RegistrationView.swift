//
//  RegistrationView.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 15.01.2024.
//

import SwiftUI

struct RegistrationView: View {
    
    @StateObject var viewModel = RegistrationViewModel()
    
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Spacer()
            Image("ThreadsAppIcon").resizable()
                .scaledToFit()
                .frame(width: 120, height:120)
                .padding()
            VStack{
                TextField("Email", text: $viewModel.email)
                    .modifier(ThreadsTextViewModifier())
                
                SecureField("Password", text: $viewModel.password)
                    .modifier(ThreadsTextViewModifier())
                
                TextField("Full Name", text: $viewModel.fullname)
                    .modifier(ThreadsTextViewModifier())
                
                TextField("Username", text: $viewModel.username)
                    .modifier(ThreadsTextViewModifier())
                
            } .padding()
            Button {
                Task{ try await viewModel.createUser()}
            } label: {
                Text("Sign Up")
                    .modifier(ThreadsButtonViewModifier())
            }
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
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
