//
//  ThreadCell.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 15.01.2024.
//

import SwiftUI

struct ThreadCell: View {
    
    
    let thread: Thread
    
    var body: some View {
        VStack{
            HStack(alignment: .top, spacing:12) {
                CircleProfileImageView()
                VStack (alignment:.leading, spacing:4){
                    HStack{
                        Text("biozalp")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray3))

                        Button{
                            
                        } label: {
                            
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.systemGray))
                            
                        }
                        
                    }
                    Text(thread.caption)
                        .font(.footnote)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    
                    HStack (spacing: 16){
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                                
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "bubble.right")
                                
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                                
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                                
                        }
                        
                    }
                    .padding(.vertical, 8)
                    .foregroundStyle(Color(.black))
                }
                
            }
            Divider()
        }.padding()
    }
}


