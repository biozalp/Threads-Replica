//
//  FeedView.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 15.01.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                LazyVStack{
                    ForEach(0...10, id: \.self) {thread in
                        ThreadCell()
                    }
                }
                .refreshable {
                    print("DEBUG: Refresh Threads")
                }
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                Button{
                    
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundStyle(Color.black)
                }
            }
            
        }
    }
}

#Preview {
    NavigationStack{
      FeedView()
    }
}
